NPM Package Manager
=================================================

Short description of how to best work with npm.


Development
-------------------------------------------------

While developing in node you should go into the applications root folder from
there you may add packages which are specified in package.json:

    > npm install // install new ones
    > npm update  // update already installed
    > npm dedupe  // remove duplication if possible

To only add a new package into the package.json you may instead call:

    > npm install <package> --save       // add to dependencies
    > npm install <package> --save-dev   // add to development dependencies

To publish to npm you have to call:

    > npm adduser

This will ask you about your user details (name, password, email). Afterwards 
you may publish modules:

    > npm publish  // called from the modules directory
    

Package Versions
-------------------------------------------------

While developing I try to be as open as possible in the required versions. So
I hope all developer follow standards and don't change the API within a minor
version. So mostly everything till the next major version is allowed in
package.json.
