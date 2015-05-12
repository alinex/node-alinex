Atom editor
=================================================

After the [Atom.io](https://atom.io) editor was launched as open source I liked
it because of it's similarities to [sublime_text](sublime.md). But till now
it is not as stable as I wish.


Installation on Linux
-------------------------------------------------

Ubuntu 12.04 or Debian Wheezy 64-bit is the recommended platform.

### Requirements

  * [node.js](http://nodejs.org/download/) v0.10.x
  * [npm](http://www.npmjs.org/) v1.4.x
  * libgnome-keyring-dev

### Installation

Install the debian package from the website:

    wget https://atom.io/download/deb
    mv deb atom.deb
    sudo dpkg --install atom.deb

### Packages

The following packages are some of my favorites:

- linter
- minimap
- Git Plus
- merge-conflicts
- Coffee Navigator
  `Ctrl-Alt-N` to toggle
- Coffee-lint
  `Cmd-Ctrl-L` to run on current file
