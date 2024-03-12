# Latex setup Guide IDE ✍🏼

**IMPORTANT:** This is the guide to setup Latex or at least how I did it. 

## Prerequisite
Perl; is installed

pdflatex ships by default with any standard LaTeX installation and is the standard method for converting LaTeX files into PDFs.
latexmk is a Perl script used to fully automate compiling complicated LaTeX documents with cross-references and bibliographies. The latexmk script actually calls pdflatex (or similar programs) under the hood, and automatically determines exactly how many pdflatex runs are needed to properly compile a document. In practice, one uses latexmk to ensure all cross-reference are resolved and that a document’s bibliography renders correctly.
 

~/.config/latexmk/latexmkrc (or XDG_CONFIG_HOME/latexmk/latexmkrc if you use XDG_CONFIG_HOME), or
~/.latexmkrc.


## Ubuntu (debian linux)
Unix instructions: 
    cd /tmp # working directory of your choice
    wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz # or curl instead of wget
    zcat < install-tl-unx.tar.gz | tar xf -
    cd install-tl-*
    perl ./install-tl --no-interaction # as root or with writable destination
    Finally, prepend /usr/local/texlive/YYYY/bin/PLATFORM to your PATH,
    e.g., /usr/local/texlive/2023/bin/x86_64-linux 
	PATH=/usr/local/texlive/2023/bin/x86_64-linux:$PATH

he default paper size is a4. If you want the default to be letter, add --paper=letter to the install-tl command.
By default, everything is installed (7+GB).

    To install a smaller scheme, pass --scheme=scheme to install-tl. For example, --scheme=small corresponds to the BasicTeX variant of MacTeX.
    To omit installation of the documentation resp. source files, pass --no-doc-install --no-src-install to install-tl. 

To change the main installation directories (rarely needed), add --texdir=/install/dir to the install-tl command. To change the location of the per-user directories (where TEXMFHOME and others will be found), specify --texuserdir=/your/dir.
To change anything and everything else, omit the --no-interaction. Then you are dropped into an interactive installation menu. 

If you're re-installing after a previous attempt, be sure to completely remove your failed installation. By default, this would be in these two directories (on Unix-like systems):

rm -rf /usr/local/texlive/2023
rm -rf ~/.texlive2023

For different tex packages check: 
- [CTAN Tex packages] (https://www.ctan.org/pkg)
- [Manual installing packages] (https://en.wikibooks.org/wiki/LaTeX/Installing_Extra_Packages)
- [Manual managing packages] (https://www.tug.org/texlive/doc/tlmgr.html)
How you install a package via TeX Live depends on whether you installed TeX Live as a single user or you installed it system-wide. If the first, try:
`tlmgr install <package>`

`tlmgr install latexmk` or `sudo apt install latexmk`
`tlmgr install pdflatex` or `sudo apt install pdflatex`
`pdflatex `
 
 
`which tlmgr`
`sudo /path/to/tlmgr install <package>` 
`sudo $(echo tlmgr) install <package>`
 
## Windows (WSL setup)


## Windows (non WSL setup)
1. Download https://mirror.ctan.org/systems/texlive/tlnet/install-tl-windows.exe
2. Execute the newly-downloaded install-tl-windows.exe.
3. Change settings as desired and install.
4. Additional Windows-specific info. 

Recommended to use overleaf if working on local machine with coorperatioon of other people.

Otherwise 
TeX installation with MiKTeX Console
https://miktex.org/howto/install-miktex
https://miktex.org/howto/miktex-console

## Mac
The Unix instructions work. If you prefer a native Mac installer, use MacTeX instead. 

 MacTeX-2023 requires macOS 10.14, Mojave, or higher and runs natively on Intel and Arm processors. To download, click: 
 https://www.tug.org/mactex/mactex-download.html

## Latex after nvim setup

### Latex simple document setup
- [Sample Document](https://guides.nyu.edu/LaTeX/sample-document)

Compile a Tex Document: 
`pdflatex -file-line-error -halt-on-error -interaction=nonstopmode -output-dir={output-directory} -synctex=1 {sourcefile.tex}`

where
    {sourcefile.tex} represents the full path to the tex file you wish to compile (e.g. ~/Documents/myfile.tex), and
    {output-directory} represents the full path to the directory you want the compilation’s output files (e.g. PDF files, log files, SyncTeX files, etc…) to go. The output directory should generally be set to the parent directory of sourcefile.tex.
-file-line-error prints error messages in the form file:line:error. As a concrete example, here is what the command pdflatex -file-line-error ~/test/myfile.tex reports if I incorrectly leave out the \item command in an itemize environment on line 15 of the file test.tex:
`/home/user/test/test.tex:15: LaTeX Error: Something's wrong--perhaps a missing item`

Compile a Tex Document: 
latexmk -pdf -output-directory={output-directory} {sourcefile.tex}
together with the following latexmkrc file:
```
# This file lives at ~/.config/latexmk/latexmkrc
# and contains the single line...
$pdflatex = "pdflatex -file-line-error -halt-on-error -interaction=nonstopmode -synctex=1";
```


## Extra resources for learning 
- [vim latex tutorial] (https://ejmastnak.com/tutorials/vim-latex/intro/)
- [Latex Project] (https://www.latex-project.org/get/)
- [Latex installers] (https://www.tug.org/texlive/)
- [Latex core github] (https://github.com/latex3/latex2e)
- [Overleaf] (https://www.overleaf.com/) 
- [Latex Guide] (https://www.ctan.org/tex-archive/info/lshort/english/) 
- [How to install packakges] (https://tex.stackexchange.com/questions/73016/how-do-i-install-an-individual-package-on-a-linux-system)



Books:

Since TeX predates the Internet, let alone the web, it has a long tradition of documentation being available in book form. (Not to mention being a typesetting program!) Here are the books we recommend most highly.

1. The TeXbook, by Donald E. Knuth (Addison-Wesley, ISBN 0-201-13448-9, 1984). The basis of everything, covering plain TeX.
2. A Guide to LaTeX2e, by Helmut Kopka and Patrick Daly (Addison-Wesley, ISBN 0-321-17385-6, fourth edition, 2003). Covers core LaTeX from the ground up, and discusses commonly used packages for graphics, web integration, and more.
3. The LaTeX Companion, by Frank Mittelbach, Michel Goossens, Johannes Braams, David Carlisle, and Chris Rowley (Addison-Wesley, ISBN 0-201-36299-6, second edition, 2004). Also covers core LaTeX, plus a vast array of additional packages.
4. Learning LaTeX, by David Griffiths and Desmond Higham (SIAM, ISBN 978-1-611974-41-6, 2016, 103pp). A short example-based book covering core LaTeX and some commonly-needed packages. 

