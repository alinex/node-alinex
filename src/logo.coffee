# Logo
# =================================================
# A function to bring a common logo to all alinex cli interfaces using ASCII
# art can be made. The logo is designed to be output on console view.


# Node Modules
# -------------------------------------------------
chalk = require 'chalk'
# alinex modules
util = require 'alinex-util'


# Generate specific logo which may be specified through the environment setting
# with the apropriate title text.
#
# @param {String} [title=Application] application title
# @return {String} logo like shown above
module.exports = (title = 'Application') ->
  # detect emblem
  sign = process.env.LOGO ? 'alinex'
  sign = 'alinex' unless logo[sign]?
  # get the title
  title = title.toUpperCase().split('').join ' '
  title = util.string.repeat(' ', Math.floor (80 - title.length) / 2) + title
  # return the logo
  return logo[sign] title


# Logo Definition
# -------------------------------------------------

logo =

  # ### Default Alinex Logo
  #
  alinex: (title) ->
    c1 = chalk.cyan
    c2 = chalk.bold.yellow
    ct = chalk.yellow
    i = "  "
    c1 """
    #{i}                            #{c2 " __   ____     __"}
    #{i}             ######  #####  #{c2 "|  | |    \\   |  |  "} ########### #####       #####
    #{i}            ######## #####  #{c2 "|  | |     \\  |  |  "}############  #####     #####
    #{i}           ######### #####  #{c2 "|  | |  |\\  \\ |  |  "}#####          #####   #####
    #{i}          ########## #####  #{c2 "|  | |  | \\  \\|  |  "}#####           ##### #####
    #{i}         ##### ##### #####  #{c2 "|  | |  |_ \\     |  "}############     #########
    #{i}        #####  ##### #####  #{c2 "|  | |    \\ \\    |  "}############     #########
    #{i}   #####   ##### #####  #{c2 "|__| |_____\\ \\___|  "}#####           ##### #####
    #{i}  #####    ##### #####                      #####          #####   #####
    #{i} ##### ######### ########################## ############  #####     #####
    #{i}##### ##########  ########################   ########### #####       #####
    #{i}___________________________________________________________________________
    
    #{ct title}
    #{i}___________________________________________________________________________

    """

  # ### divibib Logo
  #
  divibib: (title) ->
    c1 = chalk.bold.gray
    c2 = chalk.green
    ct = chalk.green
    i = "  "
    module.exports = c1 """

    #{i}                  ###   #                     #   #{c2 "###           #   ###"}
    #{i}                  ###  ###                   ###  #{c2 "###          ###  ###"}
    #{i}                  ###   #                     #   #{c2 "###           #   ###"}
    #{i}                  ###                             #{c2 "###               ###"}
    #{i + c2 " ##      "}########  ###  ###         ###  ###  #{c2 "########     ###  ########"}
    #{i + c2 "####   "}###    ###  ###   ###       ###   ###  #{c2 "###    ###   ###  ###    ###"}
    #{i + c2 " ##   "}###     ###  ###    ###     ###    ###  #{c2 "###     ###  ###  ###     ###"}
    #{i}          ###     ###  ###     ###   ###     ###  #{c2 "###     ###  ###  ###     ###"}
    #{i + c2 " ##   "}###     ###  ###      ### ###      ###  #{c2 "###     ###  ###  ###     ###"}
    #{i + c2 "####   "}###    ###  ###       #####       ###  #{c2 "###    ###   ###  ###    ###"}
    #{i + c2 " ##      "}########  ###        ###        ###  #{c2 "########     ###  ########"}

    #{i}___________________________________________________________________________

    #{ct title}
    #{i}___________________________________________________________________________

    """
