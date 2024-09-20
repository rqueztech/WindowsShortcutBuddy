package main

import (
    "database/sql"
    "log"
    "fmt"
    "strings"
    "bufio"
    "os"

    _ "github.com/mattn/go-sqlite3"
)

func ClearScreen() {
    print("\033[H\033[2J")
}

func main() {
    // Open a connection to the database
    db, err := sql.Open("sqlite3", "./windowsshortcuts.db")
    if err != nil {
        log.Fatal(err)
    }
    defer db.Close()

    reader := bufio.NewReader(os.Stdin)
    
    ClearScreen()

    regularmode := true

    entershortcut := "Enter Shortcut: ("
    regmode := "\033[32mreg_mode\033[0m"
    execmode := "exc_mode"
    closebracket := ")"

    menustring := entershortcut + regmode + " | " + execmode + closebracket + "\n"

    query := ""
    for {
        fmt.Print(menustring)
        shortcut, err := reader.ReadString('\n')
        if err != nil {
            log.Println("Error reading input:", err)
            continue
        } 

        shortcut = strings.TrimSpace(shortcut) // Trim whitespace and newlines
        if shortcut == "reg_mode" {
            entershortcut = "Enter Shortcut: ("
            regmode = "\033[32mreg_mode\033[0m"
            execmode = "exc_mode"
            closebracket = ")"
            menustring = entershortcut + regmode + " | " + execmode + closebracket + "\n"
            regularmode = true
            continue
        } else if shortcut == "exc_mode" {
            entershortcut = "Enter Shortcut: ("
            regmode = "reg_mode"
            execmode = "\033[32mexc_mode\033[0m"
            closebracket = ")"
            menustring = entershortcut + regmode + " | " + execmode + closebracket + "\n"
            regularmode = false
            continue
        } else if shortcut == "clear" {
            ClearScreen()
            continue
        }

        if regularmode {
            query = "SELECT category, shortcut, extension FROM windowsshortcuts WHERE category LIKE ? OR shortcut LIKE ? OR extension LIKE ?;"
        } else {
            query = "SELECT category, shortcut, extension FROM excelshortcuts WHERE category LIKE ? OR shortcut LIKE ? OR extension LIKE ?;"
        }

        rows, err := db.Query(query, "%"+shortcut+"%", "%"+shortcut+"%", "%"+shortcut+"%")
        if err != nil {
            log.Fatal(err)
        }
        defer rows.Close() // Ensure rows are closed after use

        // Check if any rows were returned
        found := false
        for rows.Next() {
            var category, shortcutResult, extension string
            if err := rows.Scan(&category, &shortcutResult, &extension); err != nil {
                log.Fatal(err)
            }
            fmt.Println(shortcutResult, " -> ", category, ":", extension)
            found = true
        }

        if !found {
            fmt.Println("No results found for:", shortcut)
        }
    }
}

