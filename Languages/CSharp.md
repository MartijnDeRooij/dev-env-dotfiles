# C\# setup Guide IDE ✍🏼

**IMPORTANT:** This is the guide to setup C# or at least how I did it. 

## Prerequisite
If to diffucult just install visual studio and give up :cry:
- [Visual Studio] (https://visualstudio.microsoft.com/) 
With visual studio it is easier to install the sdk/runtimes when necessary. 

## Ubuntu (debian linux)
C# Install:
Install netcoredbg
/usr/local/bin/netcoredbg
chmod 744 /usr/local/bin/netcoredbg/

- Obtain Microsoft package repository

$ wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

$ sudo dpkg -i packages-microsoft-prod.deb

Clean up
rm packages-microsoft-prod.deb

$ sudo apt update
$ sudo apt install -y apt-transport-https
$ sudo apt update
$ sudo apt install -y dotnet-sdk-7.0

https://learn.microsoft.com/nl-nl/dotnet/core/install/linux-ubuntu-2204
Installeer de SDK 
sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-8.0
De runtime installeren
sudo apt-get update && \
  sudo apt-get install -y aspnetcore-runtime-8.0 \
	sudo apt-get install -y dotnet-runtime-8.0

sudo apt install zlib1g
    libc6
    hebtcc1 (voor 16.x en 18.x)
    toetsencc-s1 (voor 20.x of hoger)
    meansssapi-krb5-2
    libicu55 (voor 16.x)
    libicu60 (voor 18.x)
    libicu66 (voor 20.x)
    libicu70 (voor 22.04)
    libicu71 (voor 22.10)
    libicu72 (voor 23.04)
    liblttng-ust1 (voor 22.x)
    bibliothekensl1.0.0 (voor 16.x)
    bibliothekensl1.1 (voor 18.x, 20.x)
    bibliothekensl3 (voor 22.x)
    bibliothekentdc++6
    libunwind8 (voor 22.x)
    zlib1g

Create new project:
dotnet new console --framework net8.0 --use-program-main

$ dotnet new console -n HelloCSharp
$ dotnet build -o out HelloCSharp.csproj

## Windows (WSL setup)
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb 
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-7.0
  
dotnet --list-sdks

https://github.com/dotnet/install-scripts
sudo apt update && sudo apt install curl 
curl -L -O https://dot.net/v1/dotnet-install.sh
sudo chmod +x ./dotnet-install.sh
Install dotnet SDK specific version.
sudo ./dotnet-install.sh -v 6.0.200 --install-dir /usr/share/dotnet 


## Windows (non WSL setup)
mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-8.0.201-win-x64.exe -C $HOME/dotnet
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet

https://chocolatey.org/install
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install bottom			# (Top in linux)

choco install -y dotnet-sdk		# C# specific for programs
choco install omnisharp			# C# specific for server of C#
choco install -y ripgrep
choco install typescript
coc.nvim (nodejs typescript package)


## Mac
Download https://dotnet.microsoft.com/download/dotnet 
mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-8.0.201-osx-x64.pkg -C $HOME/dotnet
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet

Apple: 
find /usr/local/bin/netcoredbg/* | xargs xattr -r -d com.apple.quarantine


## C\# after nvim setup
https://github.com/Samsung/netcoredbg
install with mason :MasonInstall netcoredbg
	['coreclr'] = 'netcoredbg',

### C\# Hello World
```
using System;  
  
class Program  
{  
    static void Main(string[] args)
    {
        Console.WriteLine("Hello, Ubuntu 22.04!"); 
    }
}  
```


## Extra resources for learning 
	1. Differences Between C++ Templates and C# Generics (C# Programming Guide)
		https://learn.microsoft.com/en-us/dotnet/csharp/programming-guide/generics/differences-between-cpp-templates-and-csharp-generics
	2. C# Documentation
		https://learn.microsoft.com/en-us/dotnet/csharp/
		
		
netcoredbg

### Unix

Building of Netcoredbg requires Microsoft's .NET, so currently you can build Netcoredbg only in Linux. Microsoft supports at least few distributions, see details here: https://docs.microsoft.com/en-us/dotnet/core/install/linux

#### Prerequisites

1. You need to install `cmake`, and `make` or `ninja`.

2. You need clang C++ compiler installed (Netcoredbg can't be built with gcc).

3. Microsoft's **.NET runtime** should be installed, you can download it here: https://dotnet.microsoft.com/download

4. May be you need to install some typical developers tools not mentioned here, like `git`, etc...

5. It is expected, that Netcoredbg sources placed to some directory;

6. Optional step: Netcoredbg requires **CoreCLR runtime source code**, which is typically downloaded automatically, but you can download it from here: https://github.com/dotnet/runtime

   You should check out tag v7.x.

7. Optional step: Netcoredbg requires **.NET SDK**, which can be downloaded automatically, but you can download it manually from here: https://dotnet.microsoft.com/download

#### Compiling

Configure build with the following commands:

```
user@netcoredbg$ mkdir build
user@netcoredbg$ cd build
user@build$ CC=clang CXX=clang++ cmake ..
```

For running tests after build has succeed you need to add option `-DCMAKE_INSTALL_PREFIX=$PWD/../bin`.

To enable the Source-based code coverage feature (https://clang.llvm.org/docs/SourceBasedCodeCoverage.html)
add `-DCLR_CMAKE_ENABLE_CODE_COVERAGE` option.

If you have previously downloaded .NET SDK or CoreCLR sources, then you should modify command line and add following options: `-DDOTNET_DIR=/path/to/sdk/dir -DCORECLR_DIR=/path/to/coreclr/sources`

If cmake tries to download .NET SDK or CoreCLR sources and fails -- see bullets 6 and 7 above. You can download required files manually.

After configuration has finished, you can build Netcoredbg:

```
user@netcoredbg$ make
...
user@netcoredbg$ make install
```

To perform build from scratch (including configuration step) again you should delete artefacts with following commands:

```
user@build$ cd ..
user@netcoredbg$ rm -rf build src/debug/netcoredbg/bin bin
```

> *Directory `bin` contains "installed" Netcoredbg's binaries for tests. If you have installed Netcoredbg in other place, for example in `/usr/local/bin`, you should remove it manually: currently Netcoredbg's build system doesn't performs "uninstalling".*

#### Prerequisites and compiling with interop mode support (Linux and Tizen OSes only)
Prerequisites and compiling process are the same as above with following changes:

1. You need to install `libunwind-dev` or `libunwind-devel` package, depends on your distro.

2. Configure build with the following commands:

```
user@build$ CC=clang CXX=clang++ cmake .. -DINTEROP_DEBUGGING=1
```
More details about usage of NCDB you can find in [Interop mode](docs/interop.md).

### MacOS

You need install homebrew from here: https://brew.sh/

After this, build instructions are same as for Unix (including prerequisites).

**Note: MacOS arm64 build (M1) is community supported and may not work as expected, plus some tests might fail.**


### Windows

#### Prerequisites:

1. Download and install **CMake** from here: https://cmake.org/download

2. Download and install **Microsoft's Visual Studio 2019** or newer: https://visualstudio.microsoft.com/downloads

   During installation of Visual Studio you should install all options required
   for C# and C++ development on windows.

3. Download and install **Git**, you have few options here:

 * use original Git: https://git-scm.com/download/win
 * use TortoiseGit: https://tortoisegit.org/download
 * or use git installed in cygwin: https://cygwin.com/install.html

4. Checkout Netcoredbg sources to some directory by using git.


5. This step might be omitted, in this case cmake automatically downloads necessary files.
   But if it fails, you should then checkout **CoreCLR sources** to another directory from here: https://github.com/dotnet/runtime

   You need latest tag **v7.x**.

6. This step might be omitted too, and cmake will automatically downloads that it needs.
   But in case of failure you need download and install **.NET SDK** from here: https://dotnet.microsoft.com/download

#### Compiling

Configure the build with the following commands given in Netcoredbg's source tree:

```
C:\Users\localuser\netcoredbg> md build
C:\Users\localuser\netcoredbg> cd build
C:\Users\localuser\netcoredbg\build> cmake .. -G "Visual Studio 16 2019"
```

You should run this command from cmd.exe, *not from cygwin's shell*.

Option `-G` specifies which instance of Visual Studio should build the project.
Note, minimum requirements for netcoredbg build is `Visual Studio 2019` version.


If you want to run tests after build succeed, you should add following option: `-DCMAKE_INSTALL_PREFIX="%cd%\..\bin"`

If you have downloaded .NET SDK or .NET Core sources manually, you should add following options:
`-DDOTNET_DIR="c:\Program Files\dotnet" -DCORECLR_DIR="path\to\coreclr"`


To compile and install give command:

```
C:\Users\localuser\netcoredbg\build> cmake --build . --target install
```


To perform build from scratch (including configuration step) again you should delete artefacts with following commands:

```
C:\Users\localuser\netcoredbg\build>cd ..
C:\Users\localuser\netcoredbg>rmdir /s /q build src\debug\netcoredbg\bin bin
```

> *Directory `bin` contains "installed" Netcoredbg's binaries for tests. If you have installed Netcoredbg in other place, you should remove it manually: currently Netcoredbg's build system doesn't performs "uninstalling".*



## Running Netcoredbg

In instructions shown above `netcoredbg` binary and additional libraries will be installed in some directory.
For developing purposes (for running tests, debugging, etc...) directory `bin` in Netcoredbg's source tree is typically used.

Now running the debugger with `--help` option should look like this:

```
$ ../bin/netcoredbg --help
.NET Core debugger

Options:
--buildinfo                           Print build info.
--attach <process-id>                 Attach the debugger to the specified process id.
--interpreter=cli                     Runs the debugger with Command Line Interface.
--interpreter=mi                      Puts the debugger into MI mode.
--interpreter=vscode                  Puts the debugger into VS Code Debugger mode.
--command=<file>                      Interpret commands file at the start.
-ex "<command>"                       Execute command at the start
--run                                 Run program without waiting commands
--engineLogging[=<path to log file>]  Enable logging to VsDbg-UI or file for the engine.
                                      Only supported by the VsCode interpreter.
--server[=port_num]                   Start the debugger listening for requests on the
                                      specified TCP/IP port instead of stdin/out. If port is not specified
                                      TCP 4711 will be used.
--log[=<type>]                        Enable logging. Supported logging to file and to dlog (only for Tizen)
                                      File log by default. File is created in 'current' folder.
--version                             Displays the current version.

```

Basically, to debug .NET code you should run Netcoredbg with the following command line:
```
$ /path/to/netcoredbg --interpreter=TYPE -- /path/to/dotnet /path/to/program.dll
```

## Notes for developers

### Running the tests

You can find detailed instruction how to run tests in `test-suite` directory, see [test-suite/README.md](test-suite/README.md).
Basically you just need to build and install Netcoredbg into `bin` directory (in Netcoredbg source tree) and then change directory to `test-suite` and run script `/run_tests.sh`

If you wish to get "Source-based code coverage" report, you can add an -c or --coverage option to the command line, i.e.:
`./run_tests.sh -c [[testname1][testname2]..]`
Note, for that case your build configuration should be done with `-DCLR_CMAKE_ENABLE_CODE_COVERAGE` option (see above). This feature is currently supported on Unix-like platforms only.

