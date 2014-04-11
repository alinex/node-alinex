File Structure
=================================================

All modules in the alinex universe will use the same directory structure.
This follows the general standards and is described here.


Overview
-------------------------------------------------
The locally installed system may be in one of the following states which
presents the development cycle of the system:

1. **Source** - that's the base data
2. **Development** - after installing
3. **Installed** - if installed from npm (sources removed)
4. **Productive** - after the system is configured

Each of these states may have some of the possible directories so they will
be referenced in the further description.

### Source

The developer will start with the GIT source by cloning or forking.

### Development

While in development additional directories will be created while compiling and
testing the code.

### Installed

For productive use, this is the start point. You get a ready to run compiled 
system.

### Productive

In the first run the system may be configured and create some additional 
directories for configs and runtime data.


Possible directories
-------------------------------------------------

    src // source code
      doc // general documentation which won't belong to any specific file
    lib // compiled source code

Source Code
-------------------------------------------------

The source code resides in the `src` dir and will be copied/compiled into 
`lib` to run.




GIT source
-------------------------------------------------
Get it using the
[zip-download](https://github.com/alinex/alinex-node/archive/master.zip) or

    > git checkout https://github.com/alinex/alinex-node.git

This only contains the source code with documentation and test cases. All
included in the both directories:

    src - source code used for development only
      bin - shell commands and tools for development
      doc - additional documentation
      config - example configuration
      server - server code
      view - templates for client view
      client - source code for client development
    test - test data and test suites
      server - mocha tests for the server
      client - mocha/casper tests of the client

After downloading the code the next step will be to install the development
system. Run the install for all necessary packages under debian 6, ubuntu or
other debian based distributions with the following script:

    > src/bin/install-debian.sh

Which will install all necessary packages and modules (root access or sudo
password required). For all other unix like systems with other package managers
you may configure this script for your system or do the tasks manually.


Development System
-------------------------------------------------
After installing you will have a ready to use development system. You may now
code and extend it.

You now have the following directory structure:

    src - source code (same as before)
    test - test data and suites (same as before)
    bin - scripts to help work with the system
    node_modules - npm installed packages

For further tasks you should use the integrated
[build tool](../bin/build/README.md.html):

    > bin/make.sh <command>

This will create all the necessary data for the base system.


Base System (NPM)
-------------------------------------------------
After building the Development System you will have the following directory
structure:

    lib - compiled source code
      config - example configuration
      server - server code
      view - templates for client view
      client - source code for client development
    bin - scripts to help work with the system (same as before)
    node_modules - npm installed packages (same as before)

    src - source code (same as before)
    test - test data and suites (same as before)
    doc - html documentation (if created)

The second block are directories which may be removed if you only want
a productive system.

Before the first start or after adding new modules or changing the general
configuration the [setup script](../bin/setup/README.md.html)
is used to initialize the system:

    > bin/setup.sh <command>


Runtime package
-------------------------------------------------
The runtime package is only a packaging format for the base system. It is meant
to be packed as archive and distributed. So someone who only wants to use the
system can directly unpack this and start the setup script to get started.

It will lack only the `src`, `test` and  `doc` folder as well as the development
node modules.


Configured System
-------------------------------------------------
After the setup script the following directory structure will be made:

    lib - compiled source code
    bin - scripts to help work with the system (same as before)
    node_modules - npm installed packages (same as before)
    config - configuration files
    public - links to the package public dir
    view - links to the package view dir
    data - created but empty
    log - created but empty

    src - source code (same as before)
    test - test data and suites (same as before)
    doc - html documentation (if created)

The second block are directories which may be removed if you only want
a productive system.

Now you may start and stop the server with the next type of control script which
is the [server tool](../bin/server/README.md.html):

    > bin/server <command>


Running System
-------------------------------------------------
And also while the server runs a specific CLI interface is here to help you
manage it. Use the [control script](../bin/control/README.md.html):

    > bin/control <command>

This is only possible if the server is started with the optional CLI connector.


IDE
-------------------------------------------------

You may use any IDE you want but as I tested some of the popular free ones I
had little till no support for CoffeeScript, Jade and other modern dialects.
So you may use some generic IDEs like Eclipse or NetBeans with less support or
some simpler Editors which often at least has a working syntax highlighting.

I for myself decided to use Sublime_Text which is a Texteditor with lots of
modules, Syntax Highlighting, Linting, GIT integration and lots more in a
fast way.

To get a good support I installed the following modules:

- PackageControl
- CoffeeScript
- SublimeGit
- SublimeLinter
