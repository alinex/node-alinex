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
exit = exports.exit = (code, err) ->
  if typeof code is 'object' and not err?
    err = code
    code = null
  # autodetection for exit code
  unless code?
    code = if err?.exit? and typeof err.exit is 'number'
      err.exit
    else if err?.code?
      switch err.code
        when 'EACCES' then 3
        when 'EADDRINUSE' then 4
        when 'ECONNREFUSED' then 6
        when 'ECONNRESET' then 5
        when 'EEXIST' then 3
        when 'EISDIR' then 3
        when 'EMFILE' then 3
        when 'ENOENT' then 3
        when 'ENOTDIR' then 3
        when 'ENOTEMPTY' then 3
        when 'EPERM' then 3
        when 'EPIPE' then 3
        when 'ETIMEDOUT' then 5
        else 1
    else
      0
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
