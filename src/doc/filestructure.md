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

**Source**

The developer will start with the GIT source by cloning or forking.

**Development**

While in development additional directories will be created while compiling and
testing the code.

**Installed**

For productive use, this is the start point. You get a ready to run compiled
system.

**Productive**

In the first run the system may be configured and create some additional
directories for configs and runtime data.


Possible directories
-------------------------------------------------

The following list displays all directories of any state which may exist each
listet with the states to which it belongs:

    bin           // all
    data          // productive
    doc           // development
    lib           // development
    log           // productive
    node_modules  // development, ...
    src           // source, development
    test          // source, development
    var           // source, ...
      src         // source, ...
      local       // development, ...
      lib         // productive

Read the further sections to get more information of what resides in which
directory and how it is used and created.


Source
-------------------------------------------------

The source specifies what is stored in the code repository.

This stage contains the following directories:

    bin           // executable files
    src           // source code
      doc         // general documentation which won't belong to any specific file
    test          // test data and test suites
      data        // test data
      mocha       // mocha test suites
    var           // data and code which maybe changed in installation
      src         // original data, will be overriden on update

The source code resides in the `src` dir and will be copied/compiled into
`lib` to run. This step is done on prepublication of package.


Development
-------------------------------------------------

Shows what the developer will find on his machine while developing and testing
the system. While testing the development system will also get all the
directories from productive which are not listed here.

This stage contains the following directories:

    bin           // executable files
    doc           // created documentation (optional)
    lib           // copied/compiled code
    node_modules  // npm installed packages
    src           // source code
    test          // test data and test suites
    var           // data and code which maybe changed in installation
      src         // original data, will be overriden on update
      local       // linked or copied from src (not overridden on update)


Installed
-------------------------------------------------

This is what you get after a fresh npm installation.

This stage contains the following directories:

    bin           // executable files
    lib           // copied/compiled code
    node_modules  // npm installed packages
    var           // data and code which maybe changed in installation


Productive
-------------------------------------------------

And finally this shows what resides on the productive server.

This stage contains the following directories:

    bin           // executable files
    data          // runtime data storage
    lib           // copied/compiled code
    log           // log files and debugging data
    node_modules  // npm installed packages
    var           // data and code which maybe changed in installation
      src         // original data, will be overriden on update
      local       // copied from src (not overridden on update)
      run         // linked or compiled from local (on system start or manually)


Where belongs what?
-------------------------------------------------
- templates -> /var
- temporary files -> systems temp dir
- configuration -> /var
- server statics -> /var
- language packs -> /var
- cache files -> systems temp dir


var folder
-------------------------------------------------
The var folder contains everything that may be changed for the individual
installation.

It contains the three subfolders:

- `src` - the source files which will change with each update
- `local` - local maybe changed files or links to the sources
- `run` - linked or compiled files from source overriden by local

Within these three directories you will find the following structure:

    config
    template
      <theme>
    static
