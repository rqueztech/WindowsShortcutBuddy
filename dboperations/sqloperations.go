package dboperations

import (
    "log"
    "fmt"
    "strings"
    "database/sql"
    _ "github.com/mattn/go-sqlite3"
)

type DatabaseConnection struct {
    db *sql.DB
}

func NewDatabaseConnection(dbname string) (*DatabaseConnection, error) {
    db, err := sql.Open("sqlite3", dbname)
    if err != nil {
        return nil, err
    }

    if err := db.Ping(); err != nil {
        return nil, err
    }

    return &DatabaseConnection{db: db}, nil
}

func (d *DatabaseConnection) CloseDatabase() error {
    return d.db.Close()
}

func (d *DatabaseConnection) QueryDatabase(querymade string, table string) {
    if querymade != "" {
        querymadelike := "%" + querymade + "%"
        
        fmt.Println("this is in here")

        fullquery := fmt.Sprintf("SELECT shortcut, category, extension FROM %s WHERE extension LIKE ? or category LIKE ? or shortcut LIKE ?;", table)

        rows, err := d.db.Query(fullquery, querymadelike, querymadelike, querymadelike)
        if err != nil {
            log.Fatal(err)
        }

        defer rows.Close()

        var shortcut string
        var category string
        var extension string

        for rows.Next() {
            err := rows.Scan(&shortcut, &category, &extension)
            if err != nil {
                log.Fatal(err)
            }

            currentrow := fmt.Sprintf("\033[32m%s\033[0m ->, \033[31m%s\033[0m, %s", shortcut, category, extension)
            currentrow = strings.ReplaceAll(currentrow, querymade, ("\033[30;104m" + querymade + "\033[0m"))
            fmt.Println(currentrow)

            if err = rows.Err(); err != nil {
                log.Fatal(err)
            }
        }
    } else {
        fullquery := fmt.Sprintf("SELECT shortcut, category, extension FROM %s;", table)
        rows, err := d.db.Query(fullquery)
        if err != nil {
            log.Fatal(err)
        }

        defer rows.Close()

        var shortcut string
        var category string
        var extension string

        for rows.Next() {
            err := rows.Scan(&shortcut, &category, &extension)
            if err != nil {
                log.Fatal(err)
            }

            currentrow := fmt.Sprintf("\033[32m%s\033[0m ->, \033[31m%s\033[0m, \033[30;102m%s\033[0m", shortcut, category, extension)
            fmt.Println(currentrow)

            if err = rows.Err(); err != nil {
                log.Fatal(err)
            }
        }
    }
    
    
}
