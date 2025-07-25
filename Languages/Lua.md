# Rust setup Guide IDE ✍🏼

**IMPORTANT:** This is the guide to setup LUA or at least how I did it. 

## Prerequisite

## Ubuntu (debian linux)
If you’re using Linux or macOS, open a terminal and enter the following command:
`sudo apt install lua5.3`

### Install Lua from source
`sudo apt install build-essential libreadline-dev`

Then to build and install the latest release of Lua, you need to download the lua source file or run the following commands to download the package tarball, extract, build and install it.
- [Lua Source](https://www.lua.org/download.html)
```
    mkdir lua_build
    cd lua_build
    curl -R -O http://www.lua.org/ftp/lua-5.4.4.tar.gz
    tar zxf lua-5.4.4.tar.gz
    cd lua-5.4.4
    make linux test
    sudo make install
```

## Windows (WSL setup)
If you’re using Linux or macOS, open a terminal and enter the following command:
`sudo apt install lua5.3`

## Mac
If you’re using Linux or macOS, open a terminal and enter the following command:
`sudo apt install lua5.3`

## Windows (non WSL setup)
- Go to [lua.org](https://lua.org)
- Click Download
- Click on Binaries  
- Click on Download

- [LUA](https://luabinaries.sourceforge.net/download.html)
Click on Download:  lua-5.4.2_Win64_bin.zip	Windows x64 Executables 
and
lua-5.4.2_Win64_dllw6_lib.zip	Windows x64 DLL and Includes
(MingW-w64 6 Built)  

Extract both folders 
Move content from one folder to the other  

Rename .exe files. They usually have version number added, we dont want that:
They could look like:  
wlua54.exe -> rename to -> wlua.exe  
luac54.exe -> rename to -> luac.exe  
lua65.exe -> rename to -> lua.exe
Rename folder to lua
Copy folder to c:/  
Like this -> c:/lua 

Press ok
Open powershell or cmd and write lua to see if you got it installed.

## PAth variable
Go edit enviroment variables (press windows key search for env)
Add the folder path to system variables path. (Select the one under system variables named path and press "edit" and then "new") 
    Added c:/lua to the path
------------------------------------------------------------------------------------------------------------------------.
# Lua after nvim setup
Works out of the box as the setup is with lua scripts :)

# Setup LUA with VScode
Create a new project/folder and open that in vs code 

Install extensions: 
- Local Lua Debugger
- Lua

## Set up debugging and hello world
Create a main.lua file and add the below and press save. The debug part is to activate the debug functionality provided by the Local Lua Debugger Extension.
```LUA
if arg[2] == "debug" then
    require("lldebugger").start()
end

print("it's Wednesday ma dudes")
```
## Setup launch.json for LUA
Then you press f5 when you have the main.lua file open, and then you will encounter an error: "You must set "lua-local.interpreter" in your settings....". Then VScode will generate a fodler names vscode with at launch.json file in

![](files/img/vscode/vs_code_first_f5.png)

Then you replace the content of the file with this:

```JSON
{
    "version": "0.2.0",
    "configurations": [
      {
        "type": "lua-local",
        "request": "launch",
        "name": "Debug",
        "program": {
          "command": "C:/lua/lua.exe"
        },
        "args": [
          "main.lua",
          "debug"
        ]
      },
      {
        "type": "lua-local",
        "request": "launch",
        "name": "Release",
        "program": {
          "command": "C:/lua/lua.exe"
        },
        "args": [
          "main.lua"
        ]
      }
    ]
  }
  
```
Now if you press f5 again you will se the print msg will print to the console. This setup run the main.lua file everytime you press f5.

If you want to simply run whatever file you are located in you can modify the args part so it looks like this 

```JSON
{
    "version": "0.2.0",
    "configurations": [
      {
        "type": "lua-local",
        "request": "launch",
        "name": "Debug",
        "program": {
          "command": "C:/lua/lua.exe"
        },
        "args": [
          "${file}",
          "debug"
        ]
      },
      {
        "type": "lua-local",
        "request": "launch",
        "name": "Release",
        "program": {
          "command": "C:/lua/lua.exe"
        },
        "args": [
          "${file}"
        ]
      }
    ]
  }
```

## Extra resources for learning 
- [Lua example setup](https://github.com/LazerLars/how_to_setup_lua_in_windows11_and_vscode/blob/main/README.md)
### LUA for game development
LUA is popular for making games. For example for minecraft. 