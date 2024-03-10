# Rust setup Guide IDE ✍🏼

**IMPORTANT:** This is the guide to setup C# or at least how I did it. 

## Prerequisite


## Ubuntu (debian linux)


## Windows (WSL setup)


## Windows (non WSL setup)


## Mac


## Rust after nvim setup

### Rust Hello World



## Extra resources for learning 





----------------------------------------------------------------------------------------------------------------
### Rust


#### Installation: 
If you’re using Linux or macOS, open a terminal and enter the following command:
`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
Rust
https://rustup.rs/

Windows Subsystem for Linux

If you’re a Windows Subsystem for Linux user run the following in your terminal, then follow the on-screen instructions to install Rust.

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#### PAth variable
Configuring the PATH environment variable

In the Rust development environment, all tools are installed to the ~/.cargo/bin directory, and this is where you will find the Rust toolchain, including rustc, cargo, and rustup. 


#### Project Directory
For Linux, macOS, and PowerShell on Windows, enter this:

$ mkdir ~/projects
$ cd ~/projects
$ mkdir hello_world
$ cd hello_world

For Windows CMD, enter this:

> mkdir "%USERPROFILE%\projects"
> cd /d "%USERPROFILE%\projects"
> mkdir hello_world
> cd hello_world

Before running a Rust program, you must compile it using the Rust compiler by entering the rustc command and passing it the name of your source file, like this:

$ rustc main.rs


For creatign a new project using rust:
cargo new 

cargo run in the project

cargo test 

cargo install cargo-watch
	3. Rust-101 
		https://www.ralfj.de/projects/rust-101/main.html
			7. The Rust Programming Language
		https://doc.rust-lang.org/book/second-edition/
	8. Rust By Example: 
		https://doc.rust-lang.org/rust-by-example/hello/print.html
	5. The Rust Programming Language
	6. Rust by Example		
