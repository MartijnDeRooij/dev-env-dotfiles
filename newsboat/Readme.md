# Newsboar RSS Feedreader
This is about an RSS Feed reader. 

"Newsboat is an RSS/Atom feedreader. RSS and Atom are a number of widely-used XML formats to transmit, publish and syndicate articles, for example news or blog articles. Newsboat is designed to be used on text terminals on Unix or Unix-like systems such as GNU/Linux, FreeBSD or macOS." 

## installation guide

### Snap install
`` sudo snap install newsboat ``

### From source code
`` $ git clone https://github.com/newsboat/newsboat.git ``

#### Packages to install 
Newsboat packages to install from source

- GNU Make 4.0 or newer
- GCC 5.0 or newer, or Clang 3.6 or newer
- Stable [Rust](https://www.rust-lang.org/en-US/) and Cargo (Rust's package
    manager) (1.72.1 or newer; might work with older versions, but we don't
    check that)
- [STFL (version 0.21 or newer)](https://github.com/newsboat/stfl) (the link
    points to our own fork because [the upstream](http://www.clifford.at/stfl/)
    is dead)
- [SQLite3 (version 3.5 or newer)](https://www.sqlite.org/download.html)
- [libcurl (version 7.32.0 or newer)](https://curl.haxx.se/download.html)
- Header files for the SSL library that libcurl uses. You can find out which
    library that is from the output of `curl --version`; most often that's
    OpenSSL, sometimes GnuTLS, or maybe something else.
- GNU gettext (on systems that don't provide gettext in the libc):
  ftp://ftp.gnu.org/gnu/gettext/
- [pkg-config](https://pkg-config.freedesktop.org/wiki/)
- [libxml2](http://xmlsoft.org/downloads.html)
- [json-c (version 0.11 or newer)](https://github.com/json-c/json-c/wiki)
- [Asciidoctor](https://asciidoctor.org/) (1.5.3 or newer)
- Some implementation of AWK like [GNU AWK](https://www.gnu.org/software/gawk) or [NAWK](https://github.com/onetrueawk/awk).

Developers will also need:

- [xtr (version 0.1.4 or newer)](https://github.com/woboq/tr) (can be installed
    with `cargo install xtr`)
- [Coco/R for C++](http://www.ssw.uni-linz.ac.at/coco/), needed to re-generate
    filter language parser using `regenerate-parser` targe

#### Compile and install 

      $ make                   #  pass -jN to use N CPU cores, e.g. -j8
      $ sudo make install      #  install everything under /usr/local
# Start 
``newsboat``


