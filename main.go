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

const (
    regmodebit uint8 = 1 << iota
    execmodebit
    wordmodebit
    powerpointmodebit
    powershellmodebit
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
    

    controlbit := regmodebit 

    entershortcut := "Enter Shortcut: ("
    regmode := "\033[32mreg_mode\033[0m"
    execmode := "exc_mode"
    wordmode := "word_mode"
    powerpointmode := "powerpoint_mode"
    powershellmode := "powershell_mode"
    closebracket := ")"

    menustring := entershortcut + regmode + " | " + execmode + " | " + wordmode + " | " + powerpointmode + " | " + powershellmode + closebracket + "\n"

    query := ""
    for {
        currentselecttable := ""
        fmt.Print(menustring)
        shortcut, err := reader.ReadString('\n')
        if err != nil {
            log.Println("Error reading input:", err)
            continue
        } 

        options := map[string] uint8 {
            "reg_mode" : regmodebit,
            "exc_mode" : execmodebit,
            "word_mode" : wordmodebit,
            "powerpoint_mode" : powerpointmodebit,
            "powershell_mode" : powershellmodebit,
        }

        shortcut = strings.TrimSpace(shortcut) // Trim whitespace and newlines
        

        entershortcut = "Enter Shortcut: ("
        closebracket = ")"

        if options[shortcut] != 0 {
            controlbit = options[shortcut]
        }

        regmode = "reg_mode"
        execmode = "exc_mode"
        wordmode = "word_mode"
        powerpointmode = "powerpoint_mode"
        powershellmode = "powershell_mode"

        if controlbit == regmodebit {
            regmode = "\033[32mreg_mode\033[0m"
        } else if controlbit == execmodebit {
            execmode = "\033[32mexc_mode\033[0m"
        } else if controlbit == wordmodebit {
            wordmode = "\033[32mword_mode\033[0m"
        } else if controlbit == powerpointmodebit {
            powerpointmode = "\033[32mpowerpoint_mode\033[0m"
        } else if controlbit == powershellmodebit {
            powershellmode = "\033[32mpowershell_mode\033[0m"
        }
        if shortcut == "clear" {
            ClearScreen()
            continue
        }

        menustring = entershortcut + regmode + " | " + execmode + " | " + wordmode + " | " + powerpointmode + " | " + powershellmode + closebracket + "\n"

        if controlbit == regmodebit {
            currentselecttable = "windowsshortcuts"
        } else if controlbit == execmodebit {
            currentselecttable = "excelshortcuts"
        } else if controlbit == wordmodebit {
            currentselecttable = "wordshortcuts"
        } else if controlbit == powerpointmodebit {
            currentselecttable = "powerpointshortcuts"
        } else if controlbit == powershellmodebit {
            currentselecttable = "powershellshortcuts"
        }

        query = "SELECT category, shortcut, extension FROM " + currentselecttable + " WHERE category LIKE ? OR shortcut LIKE ? OR extension LIKE ?;"

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

            category = strings.ToLower(category)
            extension = strings.ToLower(extension)
            shortcutResult = strings.ToLower(shortcutResult)
            
            coloredshortcut := "\033[102m" + shortcut + "\033[0m"
            extension = strings.ReplaceAll(extension, shortcut, coloredshortcut)
            category = strings.ReplaceAll(category, shortcut, coloredshortcut)
            
            shortcutResult = "\033[33m" + shortcutResult + "\033[0m"

            fmt.Println(shortcutResult, " -> ", category, ":", extension)
            found = true
        }

        if !found {
            fmt.Println("No results found for:", shortcut)
        }
    }
}

