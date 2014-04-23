NPM Package Manager
=================================================

Short description of how to best work with npm.


Development
-------------------------------------------------

While developing in node you should go into the applications root folder from
there you may add packages which are specified in package.json:

    > npm install # install new ones
    > npm update  # update already installed
    > npm dedupe  # remove duplication if possible

To only add a new package into the package.json you may instead call:

    > npm install <package> --save       # add to dependencies
    > npm install <package> --save-dev   # add to development dependencies

