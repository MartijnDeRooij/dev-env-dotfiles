# Go setup Guide IDE ✍🏼

**IMPORTANT:** This is the guide to setup Go or at least how I did it. 

## Prerequisite


## Ubuntu (debian linux)
https://go.dev/dl/go1.22.1.linux-amd64.tar.gz

Remove any previous Go installation by deleting the /usr/local/go folder (if it exists), then extract the archive you just downloaded into /usr/local, creating a fresh Go tree in /usr/local/go:

      $ rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.1.linux-amd64.tar.gz      

(You may need to run the command as root or through sudo).

Do not untar the archive into an existing /usr/local/go tree. This is known to produce broken Go installations.
Add /usr/local/go/bin to the PATH environment variable.

You can do this by adding the following line to your $HOME/.profile or /etc/profile (for a system-wide installation):

          export PATH=$PATH:/usr/local/go/bin
          

Note: Changes made to a profile file may not apply until the next time you log into your computer. To apply the changes immediately, just run the shell commands directly or execute them from the profile using a command such as source $HOME/.profile.
Verify that you've installed Go by opening a command prompt and typing the following command:

          $ go version
          

Confirm that the command prints the installed version of Go.

## Windows (WSL setup)
Same as ubuntu 

## Windows (non WSL setup)
https://go.dev/doc/install

https://go.dev/dl/
https://go.dev/dl/go1.22.1.windows-amd64.msi
 Open the MSI file you downloaded and follow the prompts to install Go.

By default, the installer will install Go to Program Files or Program Files (x86). You can change the location as needed. After installing, you will need to close and reopen any open command prompts so that changes to the environment made by the installer are reflected at the command prompt.
Verify that you've installed Go.

    In Windows, click the Start menu.
    In the menu's search box, type cmd, then press the Enter key.
    In the Command Prompt window that appears, type the following command:

                  $ go version
                  

Confirm that the command prints the installed version of Go.

## Mac
https://go.dev/dl/go1.22.1.darwin-arm64.pkg
 Open the package file you downloaded and follow the prompts to install Go.

The package installs the Go distribution to /usr/local/go. The package should put the /usr/local/go/bin directory in your PATH environment variable. You may need to restart any open Terminal sessions for the change to take effect.
Verify that you've installed Go by opening a command prompt and typing the following command:

          $ go version
          

Confirm that the command prints the installed version of Go.



## Go after nvim setup
:MasonInstall gopls golangci-lint-langserver delve goimports gofumpt gomodifytags gotests impl
	['delve'] = 'delve',
	
### Go Hello World
For the purposes of this tutorial, just use example/hello.

$ go mod init example/hello
go: creating new go.mod: module example/hello

In your text editor, create a file hello.go in which to write your code.

Paste the following code into your hello.go file and save the file.

package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}

This is your Go code. In this code, you:

    Declare a main package (a package is a way to group functions, and it's made up of all the files in the same directory).
    Import the popular fmt package, which contains functions for formatting text, including printing to the console. This package is one of the standard library packages you got when you installed Go.
    Implement a main function to print a message to the console. A main function executes by default when you run the main package.

Run your code to see the greeting.

$ go run .
Hello, World!

## Extra resources for learning 
Go: https://go.dev/learn/
https://go.dev/doc/tutorial/getting-started

Learn Go with Tests - https://quii.gitbook.io/learn-go-with...
Great for learning syntax - https://learnxinyminutes.com/docs/go/
Effective Go (a must read) - https://go.dev/doc/effective_go
Hands-On Software Engineering with Golang: Move beyond basic programming to design and build reliable software with clean code (ISBN 13: 978-1838554491) by Achilleas Anagnostopoulos