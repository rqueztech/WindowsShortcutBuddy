package utils

import (
    "fmt"
)

type Utils struct {
    PaintedMenu string   
}

func (*utils Utils) PaintMenu() {
    fmt.Println("Imported Utils")
}

