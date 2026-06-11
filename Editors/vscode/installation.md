# 📎 VSCode Setup (Installation)

## Prerequisites (Windows)

Install MinGW for using `make`.

Get the latest version [here](https://sourceforge.net/projects/mingw/files/latest/download).

Install it using the default options. When the MinGW Installation Manager asks which components to install, select:

- `msys-base`
- `mingw32-base`

Add the following directories to your system `PATH`:

- `C:\MinGW\bin`
- `C:\MinGW\msys\1.0\bin`

To edit the `PATH`:

> Right-click the Start button → **System** → **Advanced system settings** → **Environment Variables**

## VS Code Installation

### Linux

Run the following commands in a terminal:

```bash
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt update
sudo apt install -y code
```

### Windows

1. Download the latest installer [here](https://code.visualstudio.com/download).
2. Run the installer.
3. Install Visual Studio Code to the default location.