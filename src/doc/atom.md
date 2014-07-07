Atom editor
=================================================

After the [Atom.io](https://atom.io) editor was launched as open source I liked
it because of it's similarities to [sublime_text](sublime.md).


Installation on Linux
-------------------------------------------------

Ubuntu 12.04 or Debian Wheezy 64-bit is the recommended platform.

### Requirements

  * OS with 64-bit architecture
  * [node.js](http://nodejs.org/download/) v0.10.x
  * [npm](http://www.npmjs.org/) v1.4.x  
  * libgnome-keyring-dev 

### Instructions

Install the gnome keyring as package in your distribution:

    sudo apt-get install -y libgnome-keyring-dev python2.7 git git-core

Setup python to ensure that gyp uses python 2:

    npm config set python /usr/bin/python2 -g

Get the code from GitHub:

    git clone https://github.com/atom/atom

Build the application (at /tmp/atom-build/Atom):

    cd atom
    script/build

Install it on your system (/usr/local/bin/atom):

    sudo script/grunt install
