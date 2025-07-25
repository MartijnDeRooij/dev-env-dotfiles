# C/C++ setup Guide IDE ✍🏼

**IMPORTANT:** This is the guide to setup C/C++ or at least how I did it. 

## Prerequisite


## Ubuntu (debian linux)
[Linux](https://code.visualstudio.com/docs/cpp/config-linux) users should generally install GCC or Clang, according to their distribution’s documentation. 
For example, if you use Ubuntu, you can install the build-essential package.
```
sudo apt-get install build-essential gdb

sudo apt install build-essential 
sudo apt install ninja-build gettext cmake unzip curl g++
``` 
The following two are not needed if build essential is used
```
sudo apt install gcc 
sudo apt-get install g++
```
Use the following command to install gdb on linux machine.
`sudo apt-get install libc6-dbg gdb valgrind`

## Windows (WSL setup)
[WSL CPP](https://code.visualstudio.com/docs/cpp/config-wsl)

`sudo apt-get install build-essential gdb`

## Windows (non WSL setup)
[Mingw Download](https://www.mingw-w64.org/downloads/)
[Mingw Binaries](https://github.com/niXman/mingw-builds-binaries/releases)
If you have anything in `C:\MinGW`, delete it.

1) Go to [this website](https://sourceforge.net/projects/mingw/) `MinGW C/C++ For Windows 11 32/64 bit`
2) Run the downloaded file (`mingw.exe`). When it asks for a path, enter `C:\MinGW`. 
3) Click 'Extract'. Wait.
4) In Windows search, type 'env' and click on 'Edit the system environment variables':  
5) Click the entry for 'Path' and click 'Edit':  
6) Click 'New', and type `C:\MinGW\bin`:  
7) Click 'ok' and close all the windows.
8) Open `Command Prompt` and type `g++ --version`
(you may need to restart Command Prompt if you had any open windows)

## Mac
On macOS, you can get a C compiler by running:
`$ xcode-select --install`

## C/C++ after nvim setup
install with mason
```
:MasonInstall clangd codelldb
	['cppdbg'] = 'cpptools',
	['codelldb'] = 'codelldb',
```
### C Hello World
`nvim hello.c`
```
#include <stdio.h>
int main() {
   printf("Welcome to Cherry Servers\n");
   return 0;
}
```
`gcc hello.c -o hello`
To generate debug information that can be used by gdb - the GNU C debugger, use the following switch -ggdb as follows:
`gcc hello.c -o hello -ggdb`

### C++ Hello World 
`nvim hello.cpp`
```
#include <iostream>

int main() {
    std::cout << "Hello World!";
    return 0;
}
```
`g++ hello.cpp -o hello`
To generate debug information that can be used by gdb - the GNU C debugger, use the following switch -ggdb as follows:
`g++ hello.cpp -o hello -ggdb`

## Extra resources for learning 
Books: 
1. A complate Guide to Programming in C++
2. C++ templates: The Complete Guide
3. Effective Modern C++
4. Effective STL: 50 specific ways to imprive your use of the standard template library  
