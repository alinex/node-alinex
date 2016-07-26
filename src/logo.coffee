# Logo
# =================================================
# A function to bring a common logo to all alinex cli interfaces using ASCII
# art can be made. The logo is designed to be output on console view.


# Node Modules
# -------------------------------------------------
chalk = require 'chalk'
# alinex modules
util = require 'alinex-util'


# Generate specific logo
#
# @param {string} [title=Application] - application title
# @return {string} logo like shown above
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
    c1 """
                                #{c2 " __   ____     __"}
                 ######  #####  #{c2 "|  | |    \\   |  |  "} ########### #####       #####
                ######## #####  #{c2 "|  | |     \\  |  |  "}############  #####     #####
               ######### #####  #{c2 "|  | |  |\\  \\ |  |  "}#####          #####   #####
              ########## #####  #{c2 "|  | |  | \\  \\|  |  "}#####           ##### #####
             ##### ##### #####  #{c2 "|  | |  |_ \\     |  "}############     #########
            #####  ##### #####  #{c2 "|  | |    \\ \\    |  "}############     #########
           #####   ##### #####  #{c2 "|__| |_____\\ \\___|  "}#####           ##### #####
          #####    ##### #####                      #####          #####   #####
         ##### ######### ########################## ############  #####     #####
        ##### ##########  ########################   ########### #####       #####
        ___________________________________________________________________________

      #{ct title}
        ___________________________________________________________________________

    """

  # ### divibib Logo
  #
  divibib: (title) ->
    c1 = chalk.bold.gray
    c2 = chalk.green
    ct = chalk.green
    module.exports = c1 """

                      ###   #                     #   #{c2 "###           #   ###"}
                      ###  ###                   ###  #{c2 "###          ###  ###"}
                      ###   #                     #   #{c2 "###           #   ###"}
                      ###                             #{c2 "###               ###"}
        #{c2 " ##      "}########  ###  ###         ###  ###  #{c2 "########     ###  ########"}
        #{c2 "####   "}###    ###  ###   ###       ###   ###  #{c2 "###    ###   ###  ###    ###"}
        #{c2 " ##   "}###     ###  ###    ###     ###    ###  #{c2 "###     ###  ###  ###     ###"}
              ###     ###  ###     ###   ###     ###  #{c2 "###     ###  ###  ###     ###"}
        #{c2 " ##   "}###     ###  ###      ### ###      ###  #{c2 "###     ###  ###  ###     ###"}
        #{c2 "####   "}###    ###  ###       #####       ###  #{c2 "###    ###   ###  ###    ###"}
        #{c2 " ##      "}########  ###        ###        ###  #{c2 "########     ###  ########"}

        ___________________________________________________________________________

      #{ct title}
        ___________________________________________________________________________

    """
