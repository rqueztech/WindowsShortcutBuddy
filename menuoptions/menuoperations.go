package menuoperations

import(
    "strings"
)

type ShortcutBits struct {
    Windowsshortcutsbit    uint8 
    Excelshortcutsbit      uint8
    Wordshortcutsbit       uint8
    Powerpointshortcutsbit  uint8
    Powershellshortcutsbit  uint8
}

// Constructor for ShortcutBits
func NewShortcutbits() *ShortcutBits {
    return &ShortcutBits{
        Windowsshortcutsbit:    1 << 0,
        Excelshortcutsbit:      1 << 1,
        Wordshortcutsbit:       1 << 2,
        Powerpointshortcutsbit: 1 << 3,
        Powershellshortcutsbit: 1 << 4,
    }
}

type MenuOperationsController struct {
    ControllerBit uint8
    MenuOperator map[string]uint8
    ShortcutBits *ShortcutBits
}

// Constructor for MenuOperationsController
func NewMenuOperationsController() *MenuOperationsController {
    return &MenuOperationsController{
        ControllerBit: 1 << 0,
        MenuOperator: make(map[string]uint8),
        ShortcutBits: NewShortcutbits(), // Correctly create a new instance
    }
}

// Method to add menu operators
func (m *MenuOperationsController) AddMenuOperator() {
    m.MenuOperator["windowsshortcuts"] = m.ShortcutBits.Windowsshortcutsbit
    m.MenuOperator["excelshortcuts"] = m.ShortcutBits.Excelshortcutsbit
    m.MenuOperator["wordshortcuts"] = m.ShortcutBits.Wordshortcutsbit
    m.MenuOperator["powerpointshortcuts"] = m.ShortcutBits.Powerpointshortcutsbit
    m.MenuOperator["powershellshortcuts"] = m.ShortcutBits.Powershellshortcutsbit
}

func (m *MenuOperationsController) PaintMenu() string {
    mainmenu := "Enter Option: (windowsshortcuts, excelshortcuts, wordshortcuts, powerpointshortcuts, powershellshortcuts)"

    if (m.ControllerBit == m.MenuOperator["windowsshortcuts"]) {
        mainmenu = strings.ReplaceAll(mainmenu, "windowsshortcuts", "\033[32mwindowsshortcuts\033[0m")
    } else if(m.ControllerBit == m.MenuOperator["excelshortcuts"]) {
        mainmenu = strings.ReplaceAll(mainmenu, "excelshortcuts", "\033[32mexcelshortcuts\033[0m")
    } else if(m.ControllerBit == m.MenuOperator["wordshortcuts"]) {
        mainmenu = strings.ReplaceAll(mainmenu, "wordshortcuts", "\033[32mwordshortcuts\033[0m")
    } else if(m.ControllerBit == m.MenuOperator["powerpointshortcuts"]) {
        mainmenu = strings.ReplaceAll(mainmenu, "powerpointshortcuts", "\033[32mpowerpointshortcuts\033[0m")
    } else if(m.ControllerBit == m.MenuOperator["powershellshortcuts"]) {
        mainmenu = strings.ReplaceAll(mainmenu, "powershellshortcuts", "\033[32mpowershellshortcuts\033[0m")
    }

    return mainmenu
}
