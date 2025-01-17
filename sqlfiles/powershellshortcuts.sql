DROP TABLE IF EXISTS powershellshortcuts;

CREATE TABLE powershellshortcuts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
	extension VARCHAR(50),
	shortcut VARCHAR(50),
	category VARCHAR(200)
);

INSERT INTO powershellshortcuts(extension,shortcut,category)
VALUES
('Help','F1','Keyboard shortcuts for editing text'),
('Select All','CTRL＋A','Keyboard shortcuts for editing text'),
('Copy','CTRL＋C','Keyboard shortcuts for editing text'),
('Cut','CTRL＋X','Keyboard shortcuts for editing text'),
('Expand or Collapse Outlining','CTRL＋M','Keyboard shortcuts for editing text'),
('Find in Script','CTRL＋F','Keyboard shortcuts for editing text'),
('Find Next in Script','F3','Keyboard shortcuts for editing text'),
('Find Previous in Script','SHIFT＋F3','Keyboard shortcuts for editing text'),
('Find Matching Brace','CTRL＋］','Keyboard shortcuts for editing text'),
('Paste','CTRL＋V','Keyboard shortcuts for editing text'),
('Make Lowercase','CTRL＋U','Keyboard shortcuts for editing text'),
('Make Uppercase','CTRL＋SHIFT＋U','Keyboard shortcuts for editing text'),
('Redo','CTRL＋Y','Keyboard shortcuts for editing text'),
('Replace in Script','CTRL＋H','Keyboard shortcuts for editing text'),
('Save','CTRL＋S','Keyboard shortcuts for editing text'),
('Select All','CTRL＋A','Keyboard shortcuts for editing text'),
('Show Snippets','CTRL＋J','Keyboard shortcuts for editing text'),
('Undo','CTRL＋Z','Keyboard shortcuts for editing text'),
('Show Intellisense Help','CTRL＋Space','Keyboard shortcuts for editing text'),
('Delete word to left','CTRL＋Backspace','Keyboard shortcuts for editing text'),
('Delete word to right','CTRL＋Delete','Keyboard shortcuts for editing text'),
('New','CTRL＋N','Keyboard shortcuts for running scripts'),
('Open','CTRL＋O','Keyboard shortcuts for running scripts'),
('Run','F5','Keyboard shortcuts for running scripts'),
('Run Selection','F8','Keyboard shortcuts for running scripts'),
('Stop Execution','CTRL＋BREAK。 CTRL＋C can be used when the context is unambiguous （when there is no text selected）。','Keyboard shortcuts for running scripts'),
('Tab （to next script）','CTRL＋TAB Note： Tab to next script works only when you have a single Windows PowerShell tab open、 or when you have more than one Windows PowerShell tab open、 but the focus is in the Script Pane。','Keyboard shortcuts for running scripts'),
('Tab （to previous script）','CTRL＋SHIFT＋TAB Note： Tab to previous script works when you have only one Windows PowerShell tab open、 or if you have more than one Windows PowerShell tab open、 and the focus is in the Script Pane。','Keyboard shortcuts for running scripts'),
('Go to Command （v2） or Console （v3 and later） Pane','CTRL＋D','Keyboard shortcuts for customizing the view'),
('Go to Output Pane （v2 only）','CTRL＋SHIFT＋O','Keyboard shortcuts for customizing the view'),
('Go to Script Pane','CTRL＋I','Keyboard shortcuts for customizing the view'),
('Show Script Pane','CTRL＋R','Keyboard shortcuts for customizing the view'),
('Hide Script Pane','CTRL＋R','Keyboard shortcuts for customizing the view'),
('Move Script Pane Up','CTRL＋1','Keyboard shortcuts for customizing the view'),
('Move Script Pane Right','CTRL＋2','Keyboard shortcuts for customizing the view'),
('Maximize Script Pane','CTRL＋3','Keyboard shortcuts for customizing the view'),
('Zoom In','CTRL＋＋','Keyboard shortcuts for customizing the view'),
('Zoom Out','CTRL＋ー','Keyboard shortcuts for customizing the view'),
('Run/Continue','F5','Keyboard shortcuts for debugging scripts'),
('Step Into','F11','Keyboard shortcuts for debugging scripts'),
('Step Over','F10','Keyboard shortcuts for debugging scripts'),
('Step Out','SHIFT＋F11','Keyboard shortcuts for debugging scripts'),
('Display Call Stack','CTRL＋SHIFT＋D','Keyboard shortcuts for debugging scripts'),
('List Breakpoints','CTRL＋SHIFT＋L','Keyboard shortcuts for debugging scripts'),
('Toggle Breakpoint','F9','Keyboard shortcuts for debugging scripts'),
('Remove All Breakpoints','CTRL＋SHIFT＋F9','Keyboard shortcuts for debugging scripts'),
('Stop Debugger','SHIFT＋F5','Keyboard shortcuts for debugging scripts'),
('Continue','C','Keyboard shortcuts for debugging scripts'),
('Step Into','S','Keyboard shortcuts for debugging scripts'),
('Step Over','V','Keyboard shortcuts for debugging scripts'),
('Step Out','O','Keyboard shortcuts for debugging scripts'),
('Repeat Last Command （for Step Into or Step Over）','ENTER','Keyboard shortcuts for debugging scripts'),
('Display Call Stack','K','Keyboard shortcuts for debugging scripts'),
('Stop Debugging','Q','Keyboard shortcuts for debugging scripts'),
('List the Script','L','Keyboard shortcuts for debugging scripts'),
('Display Console Debugging Commands','H or ？','Keyboard shortcuts for debugging scripts'),
('Close PowerShell Tab','CTRL＋W','Keyboard shortcuts for Windows PowerShell tabs'),
('New PowerShell Tab','CTRL＋T','Keyboard shortcuts for Windows PowerShell tabs'),
('Previous PowerShell tab','CTRL＋SHIFT＋TAB。 This shortcut works only when no files are open on any Windows PowerShell tab。','Keyboard shortcuts for Windows PowerShell tabs'),
('Next Windows PowerShell tab','CTRL＋TAB。 This shortcut works only when no files are open on any Windows PowerShell tab。','Keyboard shortcuts for Windows PowerShell tabs'),
('Exit','ALT＋F4 closes the ISE。','Keyboard shortcuts for starting and exiting'),
('Start PowerShell。exe','CTRL＋SHIFT＋P opens a new Windows PowerShell session outside of the ISE。','Keyboard shortcuts for starting and exiting');

