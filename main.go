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

    for {
        fmt.Print("Enter Shortcut: ")
        shortcut, err := reader.ReadString('\n')
        ClearScreen()
        if err != nil {
            log.Println("Error reading input:", err)
            continue
        } 
        shortcut = strings.TrimSpace(shortcut) // Trim whitespace and newlines

        // Prepare the query
        query := "SELECT category, shortcut, extension FROM windowsshortcuts WHERE category LIKE ? OR shortcut LIKE ? OR extension LIKE ?;"
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

