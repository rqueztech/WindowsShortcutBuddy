package main

import (
    "fmt"
    "bufio"
    "os"
    "strings"
    "log"
    "WindowsShortcuts/myapp/cmd/menuoptions"
    "WindowsShortcuts/myapp/cmd/dboperations"
    // "WindowsShortcuts/myapp/cmd/utils"
)


func main() {
    dbConn, err := dboperations.NewDatabaseConnection("./windowsshortcuts.db")
    if err != nil {
        log.Fatal(err)
    }

    currentstring := "windowsshortcuts"
    
    // Create an instance of MenuOperationsController
    menucontroller := menuoperations.NewMenuOperationsController()

    // Call the AddMenuOperator method to populate the map
    menucontroller.AddMenuOperator()

    for {
        fmt.Println(menucontroller.PaintMenu())
        reader := bufio.NewReader(os.Stdin)
        mapselection, err := reader.ReadString('\n')
        if err != nil {
            log.Fatal(err)
        }

        mapselection = strings.TrimSpace(mapselection)
        fmt.Printf("You entered %q", mapselection)

        if mapselection == "windowsshortcuts" {
            menucontroller.ControllerBit = menucontroller.MenuOperator[mapselection]
            currentstring = "windowsshortcuts"
            continue
        } else if mapselection == "excelshortcuts" {
            menucontroller.ControllerBit = menucontroller.MenuOperator[mapselection]
            currentstring = "excelshortcuts"
            continue
        } else if mapselection == "wordshortcuts" {
            menucontroller.ControllerBit = menucontroller.MenuOperator[mapselection]
            currentstring = "wordshortcuts"
            continue
        } else if mapselection == "powerpointshortcuts" {
            menucontroller.ControllerBit = menucontroller.MenuOperator[mapselection]
            currentstring = "powerpointshortcuts"
            continue
        } else if mapselection == "powershellshortcuts" {
            menucontroller.ControllerBit = menucontroller.MenuOperator[mapselection]
            currentstring = "powershellshortcuts"
            continue
        } else if mapselection == "clear" {
            fmt.Println("\033[H\033[2J")
            continue
        }

        dbConn.QueryDatabase(mapselection, currentstring)
    }
}

