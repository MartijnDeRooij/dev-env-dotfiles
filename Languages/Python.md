# Python setup Guide IDE ✍🏼

**IMPORTANT:** This is the guide to setup Python or at least how I did it. 

## Prerequisite
`sudo apt-get install software-properties-common`

`sudo apt-add-repository universe`

`alias python="python3"`

## Ubuntu (debian linux)
`sudo apt install python3 python3-pip ipython3`

`sudo apt install python3-venv`

`export PATH=”$PATH:/home/martijn/.local/bin”`

`python3 -m pip install django`

`pip3 install numpy`

`pip3 install jupyter`

`pip install virtualenv`

In bashrc
`alias jupyter-notebook="~/.local/bin/jupyter-notebook --no-browser"`

Create a virtual environment
`python3 -m venv .venv`

`source .venv/bin/activate`

Machine Learning and Data Science you must need Anaconda.
- [Anaconda](https://www.anaconda.com/)
- [Anaconda Download](https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh)

`chmod a+x Anaconda3–2024.02-1-Linux-x86_64.sh`

`./Anaconda3–2024.02-1-Linux-x86_64.sh`

In .bashrc
`export PATH=”$PATH:/home/shadhin/anaconda3/bin”`

`jupyter notebook --no-browser`

## Windows (WSL setup)
Same as Ubuntu


## Windows (non WSL setup)
1. Download the Python installer - [Python Download](https://www.python.org/downloads/windows/)
2. Run the Installer

`python --version`

Install Python on Windows using the Microsoft Store. 
1. Open the Microsoft Store: Search for “Microsoft Store” in the Start menu and click on the app to open it.
2. Search for Python: In the Microsoft Store, use the search bar in the upper-right corner to search for “Python.” You should see the latest version of Python 3.11 listed in the search results.
3. Install Python: Click on the Python 3.11 listing, and then click the Install button on the Python app page. The Microsoft Store will download and install Python on your Windows computer.
Anaconda installer can also be used. 
- [Anaconda](https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Windows-x86_64.exe)

## Mac
`python --version`
Visit the Python Website - [Python](https://www.python.org/downloads/mac-osx/)
macOS installer package (.pkg file)

- [Anaconda](https://repo.anaconda.com/archive/Anaconda3-2024.02-1-MacOSX-x86_64.pkg)

## Python after nvim setup
install with mason :MasonInstall debugpy
	['python'] = 'debugpy',
### Python Hello World
`nvim test.py`

`print(‘Hello World’)`

`virtualenv -p python3 myenv`

Activate vritual environment:
`source myenv/bin/activate`

## Extra resources for learning 
- [Python/WSL](https://learn.microsoft.com/en-us/windows/python/web-frameworks)
- [Python for you and me](https://pymbook.readthedocs.io/en/latest/)
- [The Python Tutorial](https://docs.python.org/3/tutorial/)
- [Python 3.12.1 Documentation](https://docs.python.org/3/)
