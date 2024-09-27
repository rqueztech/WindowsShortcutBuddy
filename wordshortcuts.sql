DROP TABLE IF EXISTS wordshortcuts;

CREATE TABLE wordshortcuts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
	shortcut VARCHAR(20),
	category VARCHAR(120),
	extension VARCHAR(50)
);

INSERT INTO wordshortcuts(shortcut,category,extension)
VALUES
('shortcut','category','extension'),
('Ctrl＋N','Frequently used shortcuts','Create a new document。'),
('Ctrl＋S','Frequently used shortcuts','Save the document。'),
('Ctrl＋W','Frequently used shortcuts','Close the document。'),
('Ctrl＋X','Frequently used shortcuts','Cut the selected content to the Clipboard。'),
('Ctrl＋C','Frequently used shortcuts','Copy the selected content to the Clipboard。'),
('Ctrl＋V','Frequently used shortcuts','Paste the contents of the Clipboard。'),
('Ctrl＋A','Frequently used shortcuts','Select all document content。'),
('Ctrl＋B','Frequently used shortcuts','Apply bold formatting to text。'),
('Ctrl＋I','Frequently used shortcuts','Apply italic formatting to text。'),
('Ctrl＋U','Frequently used shortcuts','Apply underline formatting to text。'),
('Ctrl＋Left bracket （［）','Frequently used shortcuts','Decrease the font size by 1 point。'),
('Ctrl＋Right bracket （］）','Frequently used shortcuts','Increase the font size by 1 point。'),
('Ctrl＋E','Frequently used shortcuts','Center the text。'),
('Ctrl＋L','Frequently used shortcuts','Align the text to the left。'),
('Ctrl＋R','Frequently used shortcuts','Align the text to the right。'),
('Esc','Frequently used shortcuts','Cancel a command。'),
('Ctrl＋Z','Frequently used shortcuts','Undo the previous action。'),
('Ctrl＋Y','Frequently used shortcuts','Redo the previous action、 if possible。'),
('Alt＋W、 Q、 then use the Tab key in the Zoom dialog box to go to the value you want。','Frequently used shortcuts','Adjust the zoom magnification。'),
('Ctrl＋Alt＋S','Frequently used shortcuts','Split the document window。'),
('Alt＋Shift＋C or Ctrl＋Alt＋S','Frequently used shortcuts','Remove the document window split。'),
('1。 F6 until task pane is selected 2。 Press Ctrl＋Spacebar。　3。 Use the arrow keys to select Close、 and then press Enter。','Close Task Pane','Close taskpane with keyboard'),
('Alt＋Q、 then enter the search term。','Use the Access Keys for ribbon tabs','Move to the Tell Me or Search field on the Ribbon to search for assistance or Help content。'),
('Alt＋F','Use the Access Keys for ribbon tabs','Open the File page to use Backstage view。'),
('Alt＋H','Use the Access Keys for ribbon tabs','Open the Home tab to use common formatting commands、 paragraph styles、 and the Find tool。'),
('Alt＋N','Use the Access Keys for ribbon tabs','Open the Insert tab to insert tables、 pictures and shapes、 headers、 or text boxes。'),
('Alt＋G','Use the Access Keys for ribbon tabs','Open the Design tab to use themes、 colors、 and effects、 such as page borders。'),
('Alt＋P','Use the Access Keys for ribbon tabs','Open the Layout tab to work with page margins、 page orientation、 indentation、 and spacing。'),
('Alt＋S','Use the Access Keys for ribbon tabs','Open the References tab to add a table of contents、 footnotes、 or a table of citations。'),
('Alt＋M','Use the Access Keys for ribbon tabs','Open the Mailings tab to manage Mail Merge tasks and to work with envelopes and labels。'),
('Alt＋R','Use the Access Keys for ribbon tabs','Open the Review tab to use Spell Check、 set proofing languages、 and to track and review changes to your document。'),
('Alt＋W','Use the Access Keys for ribbon tabs','Open the View tab to choose a document view or mode、 such as Read Mode or Outline view。 You can also set the zoom magnification and manage multiple document windows。'),
('Alt or F10。 To move to a different tab、 use access keys or the arrow keys。','Work in the ribbon with the keyboard','Select the active tab on the ribbon and activate the access keys。'),
('Tab key or Shift＋Tab','Work in the ribbon with the keyboard','Move the focus to commands on the ribbon。'),
('Ctrl＋Left or Right arrow key','Work in the ribbon with the keyboard','Move between command groupings on the ribbon。'),
('Arrow keys','Work in the ribbon with the keyboard','Move among the items on the ribbon。'),
('Ctrl＋Shift＋F10','Work in the ribbon with the keyboard','Show the tooltip for the ribbon element currently in focus。'),
('Spacebar or Enter','Work in the ribbon with the keyboard','Activate the selected button。'),
('Down arrow key','Work in the ribbon with the keyboard','Open the list for the selected command。'),
('Alt＋Down arrow key','Work in the ribbon with the keyboard','Open the menu for the selected button。'),
('Down arrow key','Work in the ribbon with the keyboard','When a menu or submenu is open、 move to the next command。'),
('Ctrl＋F1','Work in the ribbon with the keyboard','Expand or collapse the ribbon。'),
('Shift＋F10','Work in the ribbon with the keyboard','Open the context menu。'),
('Left arrow key','Work in the ribbon with the keyboard','Move to the submenu when a main menu is open or selected。'),
('Ctrl＋Left arrow key','Navigate the document','Move the cursor one word to the left。'),
('Ctrl＋Right arrow key','Navigate the document','Move the cursor one word to the right。'),
('Ctrl＋Up arrow key','Navigate the document','Move the cursor up by one paragraph。'),
('Ctrl＋Down arrow key','Navigate the document','Move the cursor down by one paragraph。'),
('End','Navigate the document','Move the cursor to the end of the current line。'),
('Home','Navigate the document','Move the cursor to the beginning the current line。'),
('Ctrl＋Alt＋Page up','Navigate the document','Move the cursor to the top of the screen。'),
('Ctrl＋Alt＋Page down','Navigate the document','Move the cursor to the bottom of the screen。'),
('Page up','Navigate the document','Move the cursor by scrolling the document view up by one screen。'),
('Page down','Navigate the document','Move the cursor by scrolling the document view down by one screen。'),
('Ctrl＋Page down','Navigate the document','Move the cursor to the top of the next page。'),
('Ctrl＋Page up','Navigate the document','Move the cursor to the top of the previous page。'),
('Ctrl＋End','Navigate the document','Move the cursor to the end of the document。'),
('Ctrl＋Home','Navigate the document','Move the cursor to the beginning of the document。'),
('Shift＋F5','Navigate the document','Move the cursor to the location of the previous revision。'),
('Shift＋F5、 immediately after opening the document。','Navigate the document','Move the cursor to the location of the last revision made before the document was last closed。'),
('Ctrl＋Alt＋5、 and then the Tab key repeatedly','Navigate the document','Cycle through floating shapes、 such as text boxes or images。'),
('Esc','Navigate the document','Exit the floating shape navigation and return to the normal navigation。'),
('Ctrl＋F','Navigate the document','Display the Navigation task pane、 to search within the document content。'),
('Ctrl＋G','Navigate the document','Display the Go To dialog box、 to navigate to a specific page、 bookmark、 footnote、 table、 comment、 graphic、 or other location。'),
('Ctrl＋Alt＋Z','Navigate the document','Cycle through the locations of the four previous changes made to the document。'),
('Ctrl＋P','Preview and print documents','Print the document。'),
('Ctrl＋Alt＋I','Preview and print documents','Switch to print preview。'),
('Arrow keys','Preview and print documents','Move around the preview page when zoomed in。'),
('Page up or Page down','Preview and print documents','Move by one preview page when zoomed out。'),
('Ctrl＋Home','Preview and print documents','Move to the first preview page when zoomed out。'),
('Ctrl＋End','Preview and print documents','Move to the last preview page when zoomed out。'),
('Shift＋Arrow keys','Select text and graphics','Select text。'),
('Ctrl＋Shift＋Left arrow key','Select text and graphics','Select the word to the left。'),
('Ctrl＋Shift＋Right arrow key','Select text and graphics','Select the word to the right。'),
('Shift＋Home','Select text and graphics','Select from the current position to the beginning of the current line。'),
('Shift＋End','Select text and graphics','Select from the current position to the end of the current line。'),
('Ctrl＋Shift＋Up arrow key','Select text and graphics','Select from the current position to the beginning of the current paragraph。'),
('Ctrl＋Shift＋Down arrow key','Select text and graphics','Select from the current position to the end of the current paragraph。'),
('Shift＋Page up','Select text and graphics','Select from the current position to the top of the screen。'),
('Shift＋Page down','Select text and graphics','Select from the current position to the bottom of the screen。'),
('Ctrl＋Shift＋Home','Select text and graphics','Select from the current position to the beginning of the document。'),
('Ctrl＋Shift＋End','Select text and graphics','Select from the current position to the end of the document。'),
('Ctrl＋Alt＋Shift＋Page down','Select text and graphics','Select from the current position to the bottom of the window。'),
('Ctrl＋A','Select text and graphics','Select all document content。'),
('F8','Extend a selection','Start extending the selection。'),
('F8、 Left or Right arrow key','Extend a selection','Select the nearest character to the left or right。'),
('F8 repeatedly to expand the selection to the entire word、 sentence、 paragraph、 section、 and document。','Extend a selection','Expand the selection。'),
('Shift＋F8','Extend a selection','Reduce the selection。'),
('Ctrl＋Shift＋F8、 then press the arrow keys','Extend a selection','Select a vertical block of text。'),
('Esc','Extend a selection','Stop extending the selection。'),
('Ctrl＋Backspace','Edit text and graphics','Delete one word to the left。'),
('Ctrl＋Delete','Edit text and graphics','Delete one word to the right。'),
('Alt＋H、 F、 O','Edit text and graphics','Open the Clipboard task pane and enable the Office Clipboard、 which allows you to copy and paste content between Microsoft 365 apps。'),
('Ctrl＋X','Edit text and graphics','Cut the selected content to the Clipboard。'),
('Ctrl＋C','Edit text and graphics','Copy the selected content to the Clipboard。'),
('Ctrl＋V','Edit text and graphics','Paste the contents of the Clipboard。'),
('F2、 move the cursor to the destination、 and then press Enter。','Edit text and graphics','Move the selected content to a specific location。'),
('Shift＋F2、 move the cursor to the destination、 and then press Enter。','Edit text and graphics','Copy the selected content to a specific location。'),
('Alt＋F3','Edit text and graphics','Define an AutoText block with the selected content。'),
('The first few characters of the AutoText block、 and then press Enter when the ScreenTip appears。','Edit text and graphics','Insert an AutoText block。'),
('Ctrl＋F3','Edit text and graphics','Cut the selected content to the Spike。'),
('Ctrl＋Shift＋F3','Edit text and graphics','Paste the contents of the Spike。'),
('Ctrl＋Shift＋C','Edit text and graphics','Copy the selected formatting。'),
('Ctrl＋Shift＋V','Edit text and graphics','Paste the selected formatting。'),
('Alt＋Shift＋R','Edit text and graphics','Copy the header or footer used in the previous section of the document。'),
('Ctrl＋H','Edit text and graphics','Display the Replace dialog box、 to find and replace text、 specific formatting、 or special items。'),
('Alt＋N、 J、 J','Edit text and graphics','Display the Object dialog box、 to insert a file object into the document。'),
('Alt＋N、 M','Edit text and graphics','Insert a SmartArt graphic。'),
('Alt＋N、 W','Edit text and graphics','Insert a WordArt graphic。'),
('Ctrl＋E','Align and format paragraphs','Center the paragraph。'),
('Ctrl＋J','Align and format paragraphs','Justify the paragraph。'),
('Ctrl＋L','Align and format paragraphs','Align the paragraph to the left。'),
('Ctrl＋R','Align and format paragraphs','Align the paragraph to the right。'),
('Ctrl＋M','Align and format paragraphs','Indent the paragraph。'),
('Ctrl＋Shift＋M','Align and format paragraphs','Remove a paragraph indent。'),
('Ctrl＋T','Align and format paragraphs','Create a hanging indent。'),
('Ctrl＋Shift＋T','Align and format paragraphs','Remove a hanging indent。'),
('Ctrl＋Q','Align and format paragraphs','Remove paragraph formatting。'),
('Ctrl＋1','Align and format paragraphs','Apply single spacing to the paragraph。'),
('Ctrl＋2','Align and format paragraphs','Apply double spacing to the paragraph。'),
('Ctrl＋5','Align and format paragraphs','Apply 1。5ーline spacing to the paragraph。'),
('Ctrl＋0 （zero）','Align and format paragraphs','Add or remove space before the paragraph。'),
('Ctrl＋Alt＋K','Align and format paragraphs','Enable AutoFormat。'),
('Ctrl＋Shift＋N','Align and format paragraphs','Apply the Normal style。'),
('Ctrl＋Alt＋1','Align and format paragraphs','Apply the Heading 1 style。'),
('Ctrl＋Alt＋2','Align and format paragraphs','Apply the Heading 2 style。'),
('Ctrl＋Alt＋3','Align and format paragraphs','Apply the Heading 3 style。'),
('Ctrl＋Shift＋S','Align and format paragraphs','Display the Apply Styles task pane。'),
('Ctrl＋Alt＋Shift＋S','Align and format paragraphs','Display the Styles task pane。'),
('Ctrl＋D or Ctrl＋Shift＋F','Format characters','Display the Font dialog box。'),
('Ctrl＋Shift＋Right angle bracket （>）','Format characters','Increase the font size。'),
('Ctrl＋Shift＋Left angle bracket （<）','Format characters','Decrease the font size。'),
('Ctrl＋Right bracket （］）','Format characters','Increase the font size by 1 point。'),
('Ctrl＋Left bracket （［）','Format characters','Decrease the font size by 1 point。'),
('Shift＋F3','Format characters','Switch the text between upper case、 lower case、 and title case。'),
('Ctrl＋Shift＋A','Format characters','Change the text to all upper case。'),
('Ctrl＋Shift＋H','Format characters','Hide the selected text。'),
('Ctrl＋B','Format characters','Apply bold formatting。'),
('Ctrl＋Shift＋L','Format characters','Add a bulleted list。'),
('Ctrl＋U','Format characters','Apply underline formatting。'),
('Ctrl＋Shift＋W','Format characters','Apply underline formatting to the words、 but not the spaces。'),
('Ctrl＋Shift＋D','Format characters','Apply doubleーunderline formatting。'),
('Ctrl＋I','Format characters','Apply italic formatting。'),
('Ctrl＋Shift＋K','Format characters','Apply small caps formatting。'),
('Ctrl＋Equal sign （ = ）','Format characters','Apply subscript formatting。'),
('Ctrl＋Shift＋Plus sign （＋）','Format characters','Apply superscript formatting。'),
('Ctrl＋Spacebar','Format characters','Remove manual character formatting。'),
('Ctrl＋Shift＋Q','Format characters','Change the selected text to the Symbol font。'),
('Ctrl＋Shift＋8 （do not use the numeric keypad）','Manage text formatting','Display all nonprinting characters。'),
('Shift＋F1','Manage text formatting','Display the Reveal Formatting task pane。'),
('Shift＋Enter','Insert special characters','Insert a line break。'),
('Ctrl＋Enter','Insert special characters','Insert a page break。'),
('Ctrl＋Shift＋Enter','Insert special characters','Insert a column break。'),
('Ctrl＋Alt＋Minus sign （on the numeric keypad）','Insert special characters','Insert an em dash （—）。'),
('Ctrl＋Minus sign （on the numeric keypad）','Insert special characters','Insert an en dash （–）。'),
('Ctrl＋Hyphen （ー）','Insert special characters','Insert an optional hyphen。'),
('Ctrl＋Shift＋Hyphen （ー）','Insert special characters','Insert a nonbreaking hyphen。'),
('Ctrl＋Shift＋Spacebar','Insert special characters','Insert a nonbreaking space。'),
('Ctrl＋Alt＋C','Insert special characters','Insert a copyright symbol （©）。'),
('Ctrl＋Alt＋R','Insert special characters','Insert a registered trademark symbol （®）。'),
('Ctrl＋Alt＋T','Insert special characters','Insert a trademark symbol （™）。'),
('Ctrl＋Alt＋Period （。）','Insert special characters','Insert an ellipsis （…）'),
('Alt＋the character code （on the numeric keypad）','Insert special characters','Insert the ANSI character for the specified ANSI （decimal） character code。 For example、 to insert the euro currency symbol、 hold down Alt and press 0128 on the numeric keypad。'),
('Ctrl＋K','Work with web content','Insert a hyperlink。'),
('Alt＋Left arrow key','Work with web content','Go back one page。'),
('Alt＋Right arrow key','Work with web content','Go forward one page。'),
('F9','Work with web content','Refresh the page。'),
('Tab key','Move around in a table','Move to the next cell in the row and select its content。'),
('Shift＋Tab','Move around in a table','Move to the previous cell in the row and select its content。'),
('Alt＋Home','Move around in a table','Move to the first cell in the row。'),
('Alt＋End','Move around in a table','Move to the last cell in the row。'),
('Alt＋Page up','Move around in a table','Move to the first cell in the column。'),
('Alt＋Page down','Move around in a table','Move to the last cell in the column。'),
('Up arrow key','Move around in a table','Move to the previous row。'),
('Down arrow key','Move around in a table','Move to the next row。'),
('Alt＋Shift＋Up arrow key','Move around in a table','Move one row up。'),
('Alt＋Shift＋Down arrow key','Move around in a table','Move one row down。'),
('Tab key','Select table content','Select the content in the next cell。'),
('Shift＋Tab','Select table content','Select the content in the previous cell。'),
('Shift＋Arrow keys','Select table content','Extend a selection to adjacent cells。'),
('Select the top or bottom cell of the column、 and then press Shift＋Up or Down arrow key','Select table content','Select a column。'),
('Select the first or last cell in the row、 and then press Shift＋Alt＋End or Home。','Select table content','Select a row。'),
('Alt＋5 on the numeric keypad、 with Num Lock switched off','Select table content','Select the whole table。'),
('Enter','Insert paragraphs and tab characters in a table','Insert a new paragraph in a cell。'),
('Ctrl＋Tab','Insert paragraphs and tab characters in a table','Insert a tab character in a cell。'),
('Ctrl＋Alt＋M','Review a document','Insert a comment。'),
('Ctrl＋Shift＋E','Review a document','Turn change tracking on or off。'),
('Alt＋Shift＋C','Review a document','Close the Reviewing Pane。'),
('Alt＋Shift＋O','Work with references、 citations、 and indexing','Mark a table of contents entry。'),
('Alt＋Shift＋I','Work with references、 citations、 and indexing','Mark a table of authorities entry （citation）。'),
('Alt＋Shift＋F12、 Spacebar','Work with references、 citations、 and indexing','Choose citation options。'),
('Alt＋Shift＋X','Work with references、 citations、 and indexing','Mark an index entry。'),
('Ctrl＋Alt＋F','Work with references、 citations、 and indexing','Insert a footnote。'),
('Ctrl＋Alt＋D','Work with references、 citations、 and indexing','Insert an endnote。'),
('Alt＋Shift＋Right angle bracket （>）','Work with references、 citations、 and indexing','Go to the next footnote。'),
('Alt＋Shift＋Left angle bracket （<）','Work with references、 citations、 and indexing','Go to the previous footnote。'),
('Alt＋Shift＋K','Perform a mail merge','Preview the mail merge。'),
('Alt＋Shift＋N','Perform a mail merge','Merge a document。'),
('Alt＋Shift＋M','Perform a mail merge','Print the merged document。'),
('Alt＋Shift＋E','Perform a mail merge','Edit a mailーmerge data document。'),
('Alt＋Shift＋F','Perform a mail merge','Insert a merge field。'),
('Alt＋Shift＋D','Work with fields','Insert a DATE field。'),
('Ctrl＋Alt＋L','Work with fields','Insert a LISTNUM field。'),
('Alt＋Shift＋P','Work with fields','Insert a PAGE field。'),
('Alt＋Shift＋T','Work with fields','Insert a TIME field。'),
('Ctrl＋F9','Work with fields','Insert an empty field。'),
('Ctrl＋Shift＋F7','Work with fields','Update the linked information in a Word source document。'),
('F9','Work with fields','Update the selected fields。'),
('Ctrl＋Shift＋F9','Work with fields','Unlink a field。'),
('Shift＋F9','Work with fields','Switch between a selected field code and its result。'),
('Alt＋F9','Work with fields','Switch between all field codes and their results。'),
('Alt＋Shift＋F9','Work with fields','Run GOTOBUTTON or MACROBUTTON from a field displaying field results。'),
('F11','Work with fields','Go to the next field。'),
('Shift＋F11','Work with fields','Go to the previous field。'),
('Ctrl＋F11','Work with fields','Lock a field。'),
('Ctrl＋Shift＋F11','Work with fields','Unlock a field。'),
('Alt＋R、 U、 L','Work with text in other languages','Display the Language dialog box to set the proofing language。'),
('Alt＋R、 L','Work with text in other languages','Set default languages。'),
('Press','Insert international characters','To insert this'),
('Ctrl＋Grave accent （`）、 the letter','Insert international characters','à、 è、 ì、 ò、 ù、'),
('Ctrl＋Grave accent （`）、 the letter','Insert international characters','À、 È、 Ì、 Ò、 Ù'),
('Ctrl＋Single quotation mark （’）、 the letter','Insert international characters','á、 é、 í、 ó、 ú、 ý'),
('Ctrl＋Single quotation mark （’）、 the letter','Insert international characters','Á、 É、 Í、 Ó、 Ú、 Ý'),
('Ctrl＋Shift＋Caret （^）、 the letter','Insert international characters','â、 ê、 î、 ô、 û'),
('Ctrl＋Shift＋Caret （^）、 the letter','Insert international characters','Â、 Ê、 Î、 Ô、 Û'),
('Ctrl＋Shift＋Caret （^）、 the letter','Insert international characters','ã、 ñ、 õ'),
('Ctrl＋Shift＋Caret （^）、 the letter','Insert international characters','Ã、 Ñ、 Õ'),
('Ctrl＋Shift＋Colon （：）、 the letter','Insert international characters','ä、 ë、 ï、 ö、 ü、 ÿ、'),
('Ctrl＋Shift＋Colon （：）、 the letter','Insert international characters','Ä、 Ë、 Ï、 Ö、 Ü、 Ÿ'),
('Ctrl＋Shift＋At sign （@）、 a or A','Insert international characters','å、 Å'),
('Ctrl＋Shift＋Ampersand （&）、 a or A','Insert international characters','æ、 Æ'),
('Ctrl＋Shift＋Ampersand （&）、 o or O','Insert international characters','œ、 Œ'),
('Ctrl＋Comma （、）、 c or C','Insert international characters','ç、 Ç'),
('Ctrl＋Single quotation mark （’）、 d or D','Insert international characters','ð、 Ð'),
('Ctrl＋Forward slash （/）、 o or O','Insert international characters','ø、 Ø'),
('Ctrl＋Alt＋Shift＋Question mark （？）','Insert international characters','¿'),
('Ctrl＋Alt＋Shift＋Exclamation point （！）','Insert international characters','¡'),
('Ctrl＋Shift＋Ampersand （&）、 s','Insert international characters','ß'),
('Alt＋Tilde （~）','Use Input Method Editors for East Asian languages','Switch to the Japanese Input Method Editor （IME） for a 101ーkey keyboard、 if available。'),
('Right Alt','Use Input Method Editors for East Asian languages','Switch to the Korean Input Method Editor （IME） for a 101ーkey keyboard、 if available。'),
('Ctrl＋Spacebar','Use Input Method Editors for East Asian languages','Switch to the Chinese Input Method Editor （IME） for a 101ーkey keyboard、 if available。'),
('Alt＋W、 F','Switch the document view','Switch to the Read Mode view。'),
('Ctrl＋Alt＋P','Switch the document view','Switch to the Print Layout view。'),
('Ctrl＋Alt＋O','Switch the document view','Switch to the Outline view。'),
('Ctrl＋Alt＋N','Switch the document view','Switch to the Draft view。'),
('Alt＋Shift＋Left arrow key','Outline a document','Promote a paragraph。'),
('Alt＋Shift＋Right arrow key','Outline a document','Demote a paragraph。'),
('Ctrl＋Shift＋N','Outline a document','Demote the paragraph to body text。'),
('Alt＋Shift＋Up arrow key','Outline a document','Move the selected paragraphs up。'),
('Alt＋Shift＋Down arrow key','Outline a document','Move the selected paragraphs down。'),
('Alt＋Shift＋Plus sign （＋）','Outline a document','Expand the text under a heading。'),
('Alt＋Shift＋Minus sign （ー）','Outline a document','Collapse the text under a heading。'),
('Alt＋Shift＋A','Outline a document','Expand or collapse all text or headings。'),
('Forward slash （/） （on the numeric keypad）','Outline a document','Hide or display the character formatting。'),
('Alt＋Shift＋L','Outline a document','Switch between showing the first line of body text and showing all body text。'),
('Alt＋Shift＋1','Outline a document','Show all headings with the Heading 1 style。'),
('Alt＋Shift＋Heading level number','Outline a document','Show all headings with the specified heading level。'),
('Ctrl＋Tab','Outline a document','Insert a tab character。'),
('Home','Move through the document in Read Mode','Move to the beginning of the document。'),
('End','Move through the document in Read Mode','Move to the end of the document。'),
('Type the page number、 then press Enter','Move through the document in Read Mode','Go to a specific page。'),
('Esc','Move through the document in Read Mode','Exit Read Mode。'),
('F1','Use function key shortcuts','displays the Word help task pane。'),
('Shift ＋ F1','Use function key shortcuts','displays or hides contextーsensitive help or the Reveal Formatting task pane。'),
('Ctrl ＋ F1','Use function key shortcuts','displays or hides the ribbon。'),
('Alt ＋ F1','Use function key shortcuts','moves to the next field。'),
('Alt ＋ Shift ＋ F1','Use function key shortcuts','moves to the previous field。'),
('F2','Use function key shortcuts','moves the selected text or graphic。 Use the arrow keys to place the cursor where you want to move the text or graphic、 and then press Enter to move、 or press Esc to cancel。'),
('Shift ＋ F2','Use function key shortcuts','copies the selected text or graphic。 Use the arrow keys to place the cursor where you want to copy the text or graphic、 and then press Enter to copy、 or press Esc to cancel。'),
('Ctrl ＋ F2','Use function key shortcuts','displays the print preview area on the Print tab in the Backstage view。'),
('Alt ＋ Shift ＋ F2','Use function key shortcuts','saves the document。'),
('Ctrl ＋ Alt ＋ F2','Use function key shortcuts','displays the Open dialog box。'),
('F3','Use function key shortcuts','switches the selected text between upper case、 lower case、 and title case。'),
('Ctrl ＋ F3','Use function key shortcuts','cuts the selected content to the Spike。 You can cut multiple texts and graphics to the Spike、 and paste them as a group to another location。'),
('Ctrl ＋ Shift ＋ F3','Use function key shortcuts','pastes the contents of the Spike。'),
('Alt ＋ F3','Use function key shortcuts','creates a new Building Block。'),
('F4','Use function key shortcuts','repeats the last command or action、 if possible。'),
('Shift ＋ F4','Use function key shortcuts','repeats the last Find or Go To action。'),
('Ctrl ＋ F4','Use function key shortcuts','closes the current document。'),
('Alt ＋ F4','Use function key shortcuts','closes Word。'),
('F5','Use function key shortcuts','displays the Go To dialog box。'),
('Shift ＋ F5','Use function key shortcuts','moves the cursor to the last change。'),
('Ctrl ＋ Shift ＋ F5','Use function key shortcuts','displays the Bookmark dialog box。'),
('Alt ＋ F5','Use function key shortcuts','restores the document window size。'),
('F6','Use function key shortcuts','switch between the document、 task pane、 status bar、 and ribbon。 In a document that has been split、 F6 includes the split panes when switching between panes and the task pane。'),
('Shift ＋ F6','Use function key shortcuts','switches between the document、 ribbon、 status bar、 and task pane。'),
('Ctrl ＋ F6','Use function key shortcuts','switches to the next document window when more than one document is open。'),
('Ctrl ＋ Shift ＋ F6','Use function key shortcuts','switches to the previous document window when more than one document is open。'),
('Alt ＋ F6','Use function key shortcuts','moves from an open dialog box back to the document、 for dialog boxes that support this behavior。'),
('F7','Use function key shortcuts','displays the Editor task pane to check spelling and grammar in the document or the selected text。'),
('Shift ＋ F7','Use function key shortcuts','displays the Thesaurus task pane。'),
('Ctrl ＋ Shift ＋ F7','Use function key shortcuts','updates the linked information in a Word source document。'),
('Alt ＋ F7','Use function key shortcuts','finds the next spelling or grammatical error。'),
('Alt ＋ Shift ＋ F7','Use function key shortcuts','displays the Translator task pane。'),
('F8','Use function key shortcuts','extends the selection。 For example、 if a word is selected、 the selection size is extended to one sentence。'),
('Shift ＋ F8','Use function key shortcuts','reduces the selection。 For example、 if a paragraph is selected、 the selection size is reduced to one sentence。'),
('Ctrl ＋ Shift ＋ F8','Use function key shortcuts','turns extend selection mode on and off。 In the extend selection mode、 the arrow keys extend the selection。'),
('Alt ＋ F8','Use function key shortcuts','displays the Macro dialog box to create、 run、 edit、 or delete a macro。'),
('F9','Use function key shortcuts','updates the selected fields。'),
('Shift ＋ F9','Use function key shortcuts','switches between a field code and its result。'),
('Ctrl ＋ F9','Use function key shortcuts','inserts an empty field。'),
('Ctrl ＋ Shift ＋ F9','Use function key shortcuts','unlinks the current field。'),
('Alt ＋ F9','Use function key shortcuts','switches between all field codes and their results。'),
('Alt ＋ Shift ＋ F9','Use function key shortcuts','runs GOTOBUTTON or MACROBUTTON from a field displaying field results。'),
('F10','Use function key shortcuts','aturns KeyTips on or off。'),
('Shift ＋ F10','Use function key shortcuts','displays the shortcut menu for the selected item。'),
('Ctrl ＋ F0','Use function key shortcuts','maximizes or restores the document window size。'),
('Alt ＋ F0','Use function key shortcuts','displays the Selection task pane。'),
('Alt ＋ Shift ＋ F10','Use function key shortcuts','displays the menu or message for available actions、 for example、 for pasted text or an AutoCorrect change。'),
('F11','Use function key shortcuts','moves to the next field。'),
('Shift ＋ F11','Use function key shortcuts','moves to the previous field。'),
('Ctrl ＋ F11','Use function key shortcuts','locks the current field。'),
('Ctrl ＋ Shift ＋ F11','Use function key shortcuts','unlocks the current field。'),
('Alt ＋ F11','Use function key shortcuts','opens the Microsoft Visual Basic for Applications editor、 in which you can create a macro using Visual Basic for Applications （VBA）。'),
('F12','Use function key shortcuts','displays the Save As dialog box。'),
('Shift ＋ F12','Use function key shortcuts','saves the document。'),
('Ctrl ＋ F12','Use function key shortcuts','displays the Open dialog box。'),
('Ctrl ＋ Shift ＋ F12','Use function key shortcuts','displays the Print tab in the Backstage view。'),
('Alt ＋ Shift ＋ F12','Use function key shortcuts','selects the Table of Contents button in the Table of Contents container when the container is active。');

