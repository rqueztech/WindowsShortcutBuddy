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
    windowsshortcutsbit uint8 = 1 << iota
    excelshortcutsbit
    wordshortcutsbit
    powerpointshortcutsbit
    powershellshortcutsbit
)

var options = map[string] uint8 {
    "windowsshortcuts" : windowsshortcutsbit,
    "excelshortcuts" : excelshortcutsbit,
    "wordshortcuts" : wordshortcutsbit,
    "powerpointshortcuts" : powerpointshortcutsbit,
    "powershellshortcuts" : powershellshortcutsbit,
}


func ClearScreen() {
    print("\033[H\033[2J")
}

func MainQuery(currenttable string, db *sql.DB, shortcut string) error {
    query := "SELECT category, shortcut, extension FROM " + currenttable + " WHERE category LIKE ? OR shortcut LIKE ? OR extension LIKE ?;"

    rows, err := db.Query(query, "%"+shortcut+"%", "%"+shortcut+"%", "%"+shortcut+"%")
    if err != nil {
        log.Fatal(err)
    } else {
        fmt.Println("No Results Found")
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

    return nil
}



func main() {
    // Open a connection to the database
    db, err := sql.Open("sqlite3", "./windowsshortcuts.db")
    if err != nil {
        log.Fatal(err)
    }
    defer db.Close()

    reader := bufio.NewReader(os.Stdin)

    controlbit := windowsshortcutsbit 

    entershortcut := "Enter Shortcut: ("
    windowsshortcuts := "\033[32mwindowsshortcuts\033[0m"
    excelshortcuts := "excelshortcuts"
    wordshortcuts := "wordshortcuts"
    powerpointshortcuts := "powerpointshortcuts"
    powershellshortcuts := "powershellshortcuts"
    closebracket := ")"

    menustring := entershortcut + windowsshortcuts + " | " + excelshortcuts + " | " + wordshortcuts + " | " + powerpointshortcuts + " | " + powershellshortcuts + closebracket + "clear" + "\n"

    currenttable := "windowsshortcuts"

    for {
        fmt.Print(menustring)
        shortcut, err := reader.ReadString('\n')
        if err != nil {
            log.Println("Error reading input:", err)
            continue
        } 

        shortcut = strings.TrimSpace(shortcut) // Trim whitespace and newlines
        
        entershortcut = "Enter Shortcut: ("
        closebracket = ")"

        if options[shortcut] != 0 {
            controlbit = options[shortcut]
            windowsshortcuts = "windowsshortcuts"
            excelshortcuts = "excelshortcuts"
            wordshortcuts = "wordshortcuts"
            powerpointshortcuts = "powerpointshortcuts"
            powershellshortcuts = "powershellshortcuts"

            if controlbit == windowsshortcutsbit {
                windowsshortcuts = "\033[32mwindowsshortcuts\033[0m"
            } else if controlbit == excelshortcutsbit {
                excelshortcuts = "\033[32mexcelshortcuts\033[0m"
            } else if controlbit == wordshortcutsbit {
                wordshortcuts = "\033[32mwordshortcuts\033[0m"
            } else if controlbit == powerpointshortcutsbit {
                powerpointshortcuts = "\033[32mpowerpointshortcuts\033[0m"
            } else if controlbit == powershellshortcutsbit {
                powershellshortcuts = "\033[32mpowershellshortcuts\033[0m"
            }

            menustring = entershortcut + windowsshortcuts + " | " + excelshortcuts + " | " + wordshortcuts + " | " + powerpointshortcuts + " | " + powershellshortcuts + closebracket + "clear" + "\n"

            currenttable = shortcut
            continue
        }

        
        if shortcut == "clear" {
            ClearScreen()
            continue
        }
        
        fmt.Println("currenttable: ", currenttable)
        MainQuery(currenttable, db, shortcut)

		
    }
}

