Alinex packages
=================================================

The packages are used to extend the system. They are specific npm packages
which can be installed and will be automatically connected and integrated.


Definitions
-------------------------------------------------

**Alinex package** - is an extended npm package, which also contains some
alinex settings in it's `package.json` and can bind to a context and contain
a specific server and client side.

**Context** - defines the path under which a specific package will be made
available to the user. In the url it's the top level directory. Ofteen the
context is the same as the package name.


Possibilities
-------------------------------------------------

If can be connected with one or more context paths each with it's own
configuration.

So if you look into the `config` directory you will find `alinex.json` a file
which will list all the installed alinex packages linked to one or multiple
context paths. Also you will find a configuration directory for each
context/package with it's specific settings.


Structure
-------------------------------------------------

At first they are normal npm modules. So they have a package.json but with an
additional alinex section. They are structured identically to the alinex-core
package.


Configuration
-------------------------------------------------

Each package can have multiple configurations under different context names
in the `config` folder.
