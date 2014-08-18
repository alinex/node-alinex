ToDo
=================================================

This is a working list of things which will be done the next days.


Towards Monitoring app
-------------------------------------------------

Run control

- validator - reference check in phase two
- validator - reference calls in array, object, any
- validator - ref-check greater, greaterEqual, lower, lowerEqual, in, inKeys
- validator - ref-check isset, unset
- validator - ref-check field.subfield specifies entry
- validator - ref-check #name.field.subfield specifies other config
- validator - full description tests
- validator - interval as 6:30:15
- validator - publish as minor version
- update all - alinex, config, error, fs, monitor*, server, util

- validator - user.check
- config - set timeout if config already initializing but not done
- monitor - config master = hostname then runat = null else runat = hostname
- monitor - controller use old value while in validity
- monitor - watch for new controler-configs
- monitor-sensor - http store match results or string position
- monitor-sensor - http set user-agent
- monitor-sensor - http set post data
- monitor-sensor - http set method
- monitor-sensor - http match header
- monitor-sensor - ftp/ftps (success, responsetime)
- monitor-sensor - ssh zugriff (success, responsetime)
- monitor-sensor - cpu (load s/m/l, average%)
- monitor-sensor - memory (free%, used%, swap%)
- monitor-sensor - partition (mounted, used%, free%)
- monitor-sensor - dir (exist, size)
- monitor-sensor - daemon (status=running)
- monitor-sensor - process (cpu%, mem%, virt%, procnum)
- monitor-sensor - network (send/received bytes)
- monitor-sensor - log lines (filtered)
- monitor - use ref-checks
- monitor - controller groups calculation

Reporting

- monitor-actor - class design
- monitor-actor - email
- monitor-actor - daemon
- monitor-actor - REST call
- monitor - controller rerun after time

Data collection

- last time ok
- first time of current state

REST Interface

- POST /monitor/sensor/ping
- POST /monitor/actor/cmd
- GET /monitor/controller/name
- GET /monitor/collector/name
- http (with basic-auth)

Commandline Interface

- interactively work with sensors

Web Interface


Anytime
-------------------------------------------------

- server - config integration
- server - start() with event
- server - stop() with event#
- server - reload on config change event
- server - cluster support
- server - configs
- server -> http or https selectable
- server -> switch uid gid
- server -> restrictIP
- server -> toobusy
- server -> forceDomain
- server -> logging
- server - deliver data
- server -> start page
- server -> static files from var structure (overloadable)
- server -> jade
- server -> stylus
- server -> 404
- server -> 500
- fs - chrono extension
- fs - touch (mkdirs, create, utimes)
- fs - watch
- fs - walk (like find but calling fn instead collecting)
- fs - lineReader (read file line by line)
- fs - chmods (recursive chmod)
- fs - chowns (recursive chown user + group)
- fs - mkdirs option maxlevel (number of dirs)
- fs - tmpdir
- config - support mongo db json store
- config - support mysql store: name, data (as YAML or JSON)
- make - compile with watch option
- make - support uglify with internal call
- make - support coffee source map in uglify
- make - istanbul using source maps
- make - deploy using ftp or ssh


Alinex
-------------------------------------------------

- alinex - logo
- alinex - package searching
- alinex - package installing
- alinex - start/stop application
- alinex - configure


More modules
-------------------------------------------------

- server-demo
- jsshell
- coffeeshell
- access
