# Inclusion of parts
# =================================================


# Node Modules
# -------------------------------------------------

# include base modules
chalk = require 'chalk'


# Logo
# -------------------------------------------------
exports.logo = (title) ->
  require('./logo') title


# Error management
# -------------------------------------------------
exit = exports.exit = (code = 0, err) ->
  # exit without error
  process.exit code unless err
  # exit with error
  console.error chalk.red.bold "FAILED: #{err.message}"
  console.error err.description if err.description
  process.exit code

exports.initExit = ->
  process.on 'SIGINT', -> exit 130, new Error "Got SIGINT signal"
  process.on 'SIGTERM', -> exit 143, new Error "Got SIGTERM signal"
  process.on 'SIGHUP', -> exit 129, new Error "Got SIGHUP signal"
  process.on 'SIGQUIT', -> exit 131, new Error "Got SIGQUIT signal"
  process.on 'SIGABRT', -> exit 134, new Error "Got SIGABRT signal"
  exit
