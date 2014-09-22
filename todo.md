ToDo
=================================================

This is a working list of things which will be done the next days.

- config - watch loads multiple times (disabled, yet)
- config - set timeout if config already initializing but not done

- validator - string `values` with ref get values from string=>list, array=>values, object=>keys

- validator - ip (v4 or v6)
- validator - ipv4 /^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}$/
- validator - ipv6 /^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]).){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]).){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$/

- validator - field ref: 'sensors.*.sensor' # through any array/key element



Towards Monitoring app
-------------------------------------------------

Run control

- monitor-sensor - cpu (load s/m/l, average%)
- monitor-sensor - memory (free%, used%, swap%)
- monitor - controller groups calculation

- monitor - use ref-checks
- monitor - add yargs cli control
- monitor-sensor - daemon (status=running)
- monitor-sensor - http store match results or string position
- monitor-sensor - http set user-agent
- monitor-sensor - http set post data
- monitor-sensor - http set method
- monitor-sensor - http match header
- monitor-sensor - ftp/ftps (success, responsetime)
- monitor-sensor - ssh zugriff (success, responsetime)
- monitor-sensor - dir (exist, size)
- monitor-sensor - process (cpu%, mem%, virt%, procnum)
- monitor-sensor - network (send/received bytes)
- monitor-sensor - log lines (filtered)
- monitor - controller use old value while in validity
- monitor - watch for new controler-configs

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
