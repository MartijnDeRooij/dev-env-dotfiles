# Zig setup Guide IDE ✍🏼

**IMPORTANT:** This is the guide to setup Zig or at least how I did it. 

## Prerequisite


## Ubuntu (debian linux)
Ubuntu
`snap install zig --classic --beta`

Download a prebuilt version of Zig.
- [Zig-Download](https://ziglang.org/download/#release-0.11.0)
Choose a build of Zig 0.11 for linux that matches your CPU architecture. If you're unsurewhich architecture you're using, this can be found with:

`uname -m`

Extract the archive using tar, e.g.

`tar xf zig-linux-x86_64-0.11.0.tar.xz`

Add the location of your Zig binary to your path, e.g.
`echo 'export PATH="$HOME/zig-linux-x86_64-0.11.0:$PATH"' >> ~/.bashrc`

### Building from Source
`git pull https://github.com/ziglang/zig.git`
Ensure you have the required dependencies:

 * CMake >= 3.5	 https://cmake.org/files/
 * System C/C++ Toolchain	https://gcc.gnu.org/releases.html
 * LLVM, Clang, LLD development libraries == 17.x https://releases.llvm.org/download.html

Then it is the standard CMake build process:

Please be aware of the handy cmake variable CMAKE_PREFIX_PATH. CMake will look for LLVM and other dependencies in this location first.

```
mkdir build
cd build
cmake ..
make install
```

## Windows (WSL setup)
Ubuntu
`snap install zig --classic --beta`

## Windows (non WSL setup)
Windows

WinGet
Zig is available on WinGet.

`winget install -e --id zig.zig`

Chocolatey
Zig is available on Chocolatey.
`choco install zig`

Scoop
Zig is available on Scoop.

`scoop install zig`

Latest dev build:

`scoop bucket add versions`
`scoop install versions/zig-dev`

## Mac
Homebrew
Latest tagged release:

`brew install zig`


For macOS + Homebrew
```
mkdir build
cd build
cmake .. -DZIG_STATIC_LLVM=ON -DCMAKE_PREFIX_PATH="$(brew --prefix llvm);$(brew --prefix zstd)"
make install
```

## Zig after nvim setup

### Zig Hello World
Create a file called main.zig, with the following contents:
```
const std = @import("std");

pub fn main() void {
    std.debug.print("Hello, {s}!\n", .{"World"});
}
```
Use zig run main.zig to build and run it. In this example, Hello, World! will be written to stderr, and is assumed to never fail.

Make sure your main.zig file is UTF-8 encoded as the Zig compiler does not currently support other encodings. To re-encode your file as UTF-8, run zig fmt main.zig and reopen the file in your editor.

## Extra resources for learning 
- [zig the programming language](https://ziglang.org/learn/why_zig_rust_d_cpp/)
- [assetions](https://ziglang.org/learn/why_zig_rust_d_cpp/) 