Atom Editor
================================================================================

This editor is partly new but with good speed and support. But keep in minds bugs
may happen mostly in some plugins which are not as propper written as the base.
But that's nothing to stop an developer using it.


Installing Atom
--------------------------------------------------------------------------------
That was an easy task under LinuxMint I downloaded and installed the debian package
from [https://atom.io/](https://atom.io/). Everything went smooth and I could just
add some more packages through the integrated package management like:

And I did step over the setup dialog, to look what I may have to setup. But most
things are already set as I like them.
The only thing I changed was to enable soft-wrap.


Plugins I Use
--------------------------------------------------------------------------------

### General

- project-manager - helps to switch between different workspaces
- minimap - short overview on the right
- highlight-selected - show all occurrences of the selected text
- minimap-highlight-selected - and show also in minimap
- markdown-pdf - transform markdown into pdf
- pdf-view - view pdf files inline
- keybinding-cheatsheet - display possible keys
- export-html - to view any code in the browser and maybe print it
- open-html-in-browser - to open html from the project tree

### Programming

- git-plus - good integration of git commands
- plantuml - make uml diagrams
- language-plantuml - with syntax highlighting
- plantuml-preview - and preview on save
- todo-show - opens a pane for all todos

### CoffeeScript

- coffee-navigator
- coffee-paste
- linter-coffeelint
- linter-coffee-variables


Using Atom
================================================================================
A good introduction can be found in the
[getting-started](https://atom.io/docs/latest/getting-started-atom-basics) manual.

The key bindings are depending on the operating system and keyboard language.
So if you read some binding and want to find the key you have to look which one
it is on the international keyboard layout.
![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/KB_United_Kingdom.svg/900px-KB_United_Kingdom.svg.png)
That means for `Ctrl-\` you have to press `Ctrl+<` on a german keyboard. All of the following key codes are for the international keyboard on linux so look above and check on your keyboard.

If you have installed the keybinding-cheatsheet you can open an overview table using `Ctrl-Alt-/`.


Basic Shortcuts
--------------------------------------------------------------------------------
At first it is very easy and a lot like sublime. The major shortcut to know for
a command search is: `Ctrl+Shift+p`

Additionally the following may be helpful:
- `Ctrl-\` will toggle the file tree view
- `Alt-\` switch focus to/from tree view
- `Ctrl-T` open fuzzy find for files in current project
- `Ctrl-B` open fuzzy search to search in open files
- `Alt-Shift-P` switch projects (using project-manager)


Editing
--------------------------------------------------------------------------------
**Move Cursor**
- `Ctrl-Left` move to beginning of word
- `Ctrl-Right` move to end of word
- `Ctrl-G` go to line (line:column)

**Edit**
- `Ctrl-Up` / `Ctrl-Down` moves the current line or selected lines up/down

**Multi cursor**
- `Alt-Shift-Up` / `Alt-Shift-Down` adds another cursor one line above/below
- `Strg-Click` add or remove another cursor
- `ESC` to remove multi cursor and go back to a single one


Code Specific Helpers
--------------------------------------------------------------------------------
**Show Help**
- `Ctrl-Shift-M` shows a rendered preview (realtime)
- `Alt-Shift-T` shows the todo list (using todo-show)


Using Git
--------------------------------------------------------------------------------

**Modify**
- `Ctrl-Shift-H` show menu of all git commands
- `Ctrl-Shift-A` adds new files
- `Ctrl-Shift-A S` show status of files
- `Ctrl-Shift-A C` commit changes (give a message and save `Ctrl-S`)
- `Ctrl-Shift-A P` add all changed files and commit + push to remote


PlantUML
--------------------------------------------------------------------------------
To use PlantUML in Atom editor install the packages: plantuml, language-plantuml
and plantuml-preview. Then you have to install additional things on the shell:

    sudo apt-get install graphviz -y
    cd ~/.atom
    wget http://sourceforge.net/projects/plantuml/files/plantuml.jar

To finish the setup you need to add the following to the `~/.atom/config.cson`:

    "plantuml-preview":
      jarLocation: '/home/alex/.atom/plantuml.jar'

As help for the syntax you may look at the
[PlantUML Homepage](http://plantuml.com/sequence.html)
