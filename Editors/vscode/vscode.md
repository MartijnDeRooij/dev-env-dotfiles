# 📎VSCode 
One of most used programming editors out there, where as knowing a bit about it and learning how I have this work together with my current setup is the best option. 

## Settings
For the settings I will only write a couple of them down I find important to be consistent. 

- Editor: Tab Size
    The number of spaces a tab is equal to. This setting is overridden based on the file contents when Editor: Detect Indentation is on.
    `editor.tabSize 4`

- Editor: Render Whitespace
    Controls how the editor should render whitespace characters.
   `editor.renderWhitespace all`

- Editor: Insert Spaces
    Insert spaces when pressing Tab. This setting is overridden based on the file contents when Editor: Detect Indentation is on.
    ` editor.insertSpaces true`

- Line Numbers
    Controls the display of line numbers.
    `editor.lineNumbers on`

- Encoding
    The default character set encoding to use when reading and writing files. This setting can also be configured per language.
    `files.encoding UTF-8`

- Auto Format on Save
    `"editor.formatOnSave": true`

- Telemetry Level
    `telemetry.telemetryLevel off`

## Extensions
- [WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl)
The WSL extension lets you use VS Code in WSL just as you would from Windows.

- [CMake](https://marketplace.visualstudio.com/items?itemName=twxs.cmake)

- [VIM](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)

With some standard language server extensions:
- [C-C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
- [Python Debugger](https://marketplace.visualstudio.com/items?itemName=ms-python.debugpy)

## Shortcuts

0. Most used commands:
- `Ctrl + Shift + P, F1`: Show Command Palette Show all commands
- `Ctrl + Shift + F`: Search within all files
- `Alt + Up/Down arrow`: Move a line up or down
- `Alt + Click` Multi-Select Cursor
- `Ctrl + Shift + K` Delete a line quickly
- `Ctrl + /`: Toggle line comment
- `Ctrl + \` View files side by side
- `Ctrl + G` Takes you to a specified line
- `Ctrl + K Ctrl + X` Remove unwanted whitespace
- `Shift + Ctrl + V` Preview a markdown document
- `Ctrl + Shift + [ to fold | Ctrl + Shift + ]` to unfold Collapse or expand code block
- `Shift + F12` Quickly find reference to a symbol
- `Ctrl + `` `  Toggle integrated terminal
- `F2` Rename all instances of a symbol

1. Shortcuts for searching and navigating through source code 
- `Ctrl + Q`: Displays Visual Studio Search
- `Ctrl + T`: Displays the Go To All tool
- `Ctrl + -`: Navigates backward between opened documents in the current session
- `Ctrl + Shift + -`: Navigates forward between opened documents in the current session
- `F12`: Navigates to a class definition
- `Alt + F12`: Allows you to view and edit the code of a class in a pop-up window, from the code file you are writing.
- `Ctrl + F12`: Navigates to the implementation of a member in a class
- `Ctrl + Shift + F12`: Moves to the next error line when the error list window is open and more than one error is listed
- `F8`: Navigates forward in the list of results of the current window
- `Shift + F8`: Navigates backward in the list of results of the current window

2. Shortcuts for editing and refactoring 
- `Alt + Enter`: Displays quick actions
- `Ctrl + K, Ctrl + I`: Obtains information about a member of a class
- `Ctrl + K, Ctrl + C`: Comments multiple selected lines in the source code
- `Ctrl + K, Ctrl + U`: Uncomments multiple selected lines in the source code
- `Ctrl + Shift + L`: Deletes selected lines
- `Ctrl + Shift + V`: Displays and allows pasting the contents from the buffer ring (it refers to the history of elements that have been previously copied)
- `Ctrl + F`: Finds a specific text in the code
- `Ctrl + A`: Selects all the lines in the current file
- `Ctrl + S`: Saves the pending changes in the current file
- `Ctrl + Shift + S`: Saves the pending changes in all the opened files
- `Ctrl + Shift + .`: Zooms into the current file
- `Ctrl + Shift + ,`: Zooms out from the current file
- `Ctrl + Up`: Moves selected lines up in a code file
- `Ctrl + Down`: Moves selected lines down in a code file
- `Ctrl + K, Ctrl + D`: Applies the style rules to the entire document
- `Ctrl + K, Ctrl + F`: Applies the style rules only in the selected lines in the document
- `Ctrl + K, Ctrl + S`: Used to encapsulate the code between common clauses, such as cycles (while, for, and so on), control statements (if, switch, and so on), or code regions (#region).
- `Ctrl + R`: Renames a member
- `Ctrl + R, Ctrl + E`: Creates a property for a field of a class
- `Ctrl + R, Ctrl + G`: Removes unused using statements in a class and sorts them alphabetically
- `Ctrl + R, Ctrl + M`: Creates a method from the selected code
- `Ctrl + X`: Cut line (empty selection)
- `Ctrl + Home`: Go to beginning of file
    
3. Shortcuts for debugging and testing 
- `F5`: Starts the application in debug mode
- `Ctrl + F5`: Starts the application without debug mode
- `Shift + F5`: Stops the application when it's running
- `Ctrl + Shift + F5`: Stops the application execution, rebuilds the project, and creates a new debugging session
- `F9`: Places or removes a breakpoint
- `F10`: Skips the execution of code when debugging
- `F11`: Debugs source code line by line
- `Shift + F11`: Steps out of the execution of the method
- `Ctrl + R, Ctrl + A`: Starts unit test execution in debug mode
- `Ctrl + R, A`: Starts unit test execution without debug mode

4. The most common shortcuts for use in the IDE 
- `Ctrl + [ + S`: If we have a file open, this shortcut allows us to quickly select it in the Solution Explorer window.
- `Ctrl + Alt + L`: Opens the Solution Explorer window
- `Ctrl + Alt + O`: Opens the Output window.
- `Ctrl + \, E`: Opens the Error List window
- `Ctrl + \, Ctrl + M`: Opens the Team Explorer window.
- `Ctrl + Alt + B`: Opens the Breakpoints window.
- `F4`: Opens the Properties window.
- `Alt + F6`: Allows you to scroll back between windows on the panels that are open.
- `Shift + Alt + F6`: Allows you to scroll forward between windows on the panels that are open.
- `Shift + Esc`: Allows you to close the current tool window
- `Ctrl + Alt + Pg Up`: Allows scrolling up between open documents even when it is not the same session.
- `Ctrl + Alt + Pg Dn`: Allows scrolling down between open documents even when it is not the same session.
- `Ctrl + Tab`: Displays a special window with the open documents and selects the most recent one.
- `Ctrl + Shift + Tab`: Displays a special window with the open documents and selects the least recent one.
- `Shift + Alt + Enter`: Allows you to place the Visual Studio environment at full screen, allowing you to concentrate on the current document. Use the same shortcut to get out of full-screen mode
- `Ctrl + K + K`: Creates a bookmark in the line where we are positioned. If there is already a bookmark on that line, it will be deleted.
- `Ctrl + K + N`: Allows you to scroll forward through the different bookmarks that are part of a project.
- `Ctrl + K + P`: Allows you to scroll backward through the different bookmarks that are part of a project.
- `Ctrl + P`: Quick Open, Go to File…
- `Ctrl + Shift + N`: New window/instance
- `Ctrl + Shift + W`: Close window/instance
- `Ctrl + ,`: User Settings
- `Ctrl +`: Show integrated terminal
- `Ctrl + Shift +`: Create a new terminal
    
5. Shortcuts for file management
- `Ctrl + N`: Create a new file
- `Ctrl + O`: Open a file
- `Ctrl + S`: Save a file
- `Ctrl + Shift + S`: Save all open files
- `Ctrl + P`: Open the Quick Open dialog to quickly search and open a file
- `Ctrl + Tab`: Switch between open files
- `Ctrl + W`: Close the current file
- `Ctrl + Shift + T`: Reopen the last closed file
- `Ctrl + Shift + N`: Create a new folder
- `Ctrl + Shift + E`: Show/hide the Explorer panel, which displays the file and folder structure of your project
- `Ctrl+ K Enter`: Keep preview mode editor open
