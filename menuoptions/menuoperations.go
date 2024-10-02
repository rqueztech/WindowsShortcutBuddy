package menuoperations


type ShortcutBits struct {
    Windowsshortcutsbit uint8 
    Excelshortcutsbit uint8
    Wordshortcutsbit uint8
    Powerpointshortcutsbit uint8
    Powershellshortcutsbit uint8
}

func NewShortcutbits() *ShortcutBits {
    return &ShortcutBits {
        Windowsshortcutsbit : 1 << 0,
        Excelshortcutsbit: 1 << 1,
        Wordshortcutsbit: 1 << 2,
        Powerpointshortcutsbit: 1 << 3,
        Powershellshortcutsbit: 1 << 4,
    }
}

type MenuOperationsController struct {
    MenuOperator map[string]uint8
}

func NewMenuOperationsController() *MenuOperationsController {
    return &MenuOperationsController {
        MenuOperator: make(map[string]uint8),
    }
}

func (m *MenuOperationsController) AddMenuOperator() {
    m.MenuOperator["windowsshortcut"] = m.Windowsshortcutsbit
    m.MenuOperator["excelshortcut"] = m.Excelshortcutsbit
    m.MenuOperator["wordshortcut"] = m.Wordshortcutsbit
    m.MenuOperator["powerpointshortcut"] = m.Powerpointshortcutsbit
    m.MenuOperator["powershellshortcut"] = m.Powershellshortcutsbit
}
