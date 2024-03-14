# Rust setup Guide IDE ✍🏼

**IMPORTANT:** This is the guide to setup Rust or at least how I did it. 

## Prerequisite


## Ubuntu (debian linux)
If you’re using Linux or macOS, open a terminal and enter the following command:
`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
`cargo install cargo-watch`
## Windows (WSL setup)
If you’re a Windows Subsystem for Linux user run the following in your terminal, then follow the on-screen instructions to install Rust.
`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
`cargo install cargo-watch`
## Windows (non WSL setup)
To start using Rust, download the installer, then run the program and follow the onscreen instructions. You may need to install the Visual Studio C++ Build tools when prompted to do so.
- [Rust Installer](https://static.rust-lang.org/rustup/dist/x86_64-pc-windows-msvc/rustup-init.exe)

## Mac
If you’re using Linux or macOS, open a terminal and enter the following command:
`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`

## PAth variable
Configuring the PATH environment variable

In the Rust development environment, all tools are installed to the ~/.cargo/bin directory, and this is where you will find the Rust toolchain, including rustc, cargo, and rustup.

## Rust after nvim setup

### Rust Hello World
For creatign a new project using rust:
`cargo new`

`cargo run` in the project

`cargo test`
Name the file name: hello.rs
Before running a Rust program, you must compile it using the Rust compiler by entering the rustc command and passing it the name of your source file, like this:
`rustc hello.rs`

```
// This is the main function.
fn main() {
    // Statements here are executed when the compiled binary is called.

    // Print text to the console.
    println!("Hello World!");
}
```

## Extra resources for learning 
- [rust](https://rustup.rs/)
- [Rust-101] (https://www.ralfj.de/projects/rust-101/main.html)
- [The Rust Programming Language](https://doc.rust-lang.org/book/second-edition/)
- [Rust By Example: ](https://doc.rust-lang.org/rust-by-example/hello/print.html)
- Book: The Rust Programming Language
- Book: Rust by Example
- Book: Zero To Production In Rust: An introduction to backend development 
