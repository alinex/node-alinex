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

> The developer will start with the GIT source by cloning or forking.

**Development**

> While in development additional directories will be created while compiling and
> testing the code.

**Installed**

> For productive use, this is the start point. You get a ready to run compiled
> system.

**Productive**

> In the first run the system may be configured and create some additional
> directories for configs and runtime data.


Possible directories
-------------------------------------------------

The following list displays all directories of any state which may exist each
listed with the states to which it belongs:

``` text
bin           // all
coverage      // development
data          // productive
doc           // development
lib           // development, ...
man           // development, ...
log           // productive
node_modules  // development, ...
src           // source, development
test          // source, development
var           // source, ...
  lib         // productive
  local       // development, ...
  src         // source, ...
  example     // examples
```

Read the further sections to get more information of what resides in which
directory and how it is used and created.


Source
-------------------------------------------------

The source specifies what is stored in the code repository.

This stage contains the following directories:

``` text
bin           // executable files
src           // source code
  doc         // general documentation which won't belong to any specific file
  man         // sources for manpages
test          // test data and test suites
  data        // test data
  mocha       // mocha test suites
var           // data and code which maybe changed in installation
  src         // original data, will be overridden on update
  example     // examples
```

The source code resides in the `src` folder and will be copied/compiled into
`lib` to run. This step is done on prepublication of package.


Development
-------------------------------------------------

Shows what the developer will find on his machine while developing and testing
the system. While testing the development system will also get all the
directories from productive which are not listed here.

This stage contains the following directories:

``` text
bin           // executable files
coverage      // coverage report from tests
doc           // created documentation (optional)
lib           // copied/compiled code
man           // created man pages
node_modules  // npm installed packages
src           // source code
test          // test data and test suites
var           // data and code which maybe changed in installation
  src         // original data, will be overridden on update
  local       // linked or copied from src (not overridden on update)
  example     // examples
```


Installed
-------------------------------------------------

This is what you get after a fresh npm installation.

This stage contains the following directories:

``` text
bin           // executable files
lib           // copied/compiled code
man           // created man pages
node_modules  // npm installed packages
var           // data and code which maybe changed in installation
  src         // original data, will be overridden on update
  example     // examples
```


Productive
-------------------------------------------------

And finally this shows what resides on the productive server.

This stage contains the following directories:

``` text
bin           // executable files
data          // runtime data storage
lib           // copied/compiled code
man           // created man pages
log           // log files and debugging data
node_modules  // npm installed packages
var           // data and code which maybe changed in installation
  src         // original data, will be overridden on update
  local       // copied from src (not overridden on update)
  lib         // linked or compiled from src/local (on system start or manually)
  example     // examples
```


Where belongs what?
-------------------------------------------------
The following list should give an overview of there to store what:

- specific build steps -> `/bin/develop/`
- templates -> `/var/.../tèmplate`
- temporary files -> systems temp folder
- configuration -> `/var/.../config`
- server statics -> `/var/.../static`
- language packs -> `/var/.../locale`
- cache files -> systems temp folder
- resources for binaries -> `/bin/lib`


More details about some sections
-------------------------------------------------

### var folder

The var folder contains everything that may be changed for the individual
installations.

It contains the three sub folders:

- `src` - the source files which will change with each update
- `local` - local maybe changed files
- `lib` - linked or compiled files from source overridden by local
- `example` - examples to be used as template for own configuration

Within these three directories you will find the following possible structure:

``` text
config
template
  <theme>
static
...
```

Templates and statics will be compiled from `local` or `src` to lib.

If globally installed the `var/local` folder maybe replaced by a softlink
to the global `/etc/<app>/` folder.


Global installation
-------------------------------------------------
The application modules often allow to store their data out of the programs
directory:

__User specific:__

Here the contents of the `var/local` folder should be under `~/.<program>/`.

__Globally:__

- configs... under `/etc/<program>/` instead of `var/local/`
- data under `/var/<program>/` instead of `var/data/`
- logs under `/var/log/<program>/` instead of 'log/'


