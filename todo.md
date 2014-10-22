
ToDo
=================================================

This is a working list of things which will be done the next weeks.

- config - test watch

- server:
  reload on config change event
  cluster support
  configs
  -> http or https selectable
  -> switch uid gid
  -> restrictIP
  -> toobusy
  -> forceDomain
  -> logging
  deliver data
  -> start page
  -> static files from var structure (overloada
  -> jade
  -> stylus
  -> 404
  -> 500
  integrateable in app
  REST support
  Module support
  -> mount path
  -> own routing
  -> different static dir
  -> different view dir



Towards Monitoring app
-------------------------------------------------

SENSORS

- monitor - send verbose to info, fail to error and warn

- ssh

- dirstat

- netstat

  > netstat --ip
  > ss

- uptime

  /proc/uptime -> just restarted

  config:
  values:

- processes

  config:
  - name

  values:
  - cpu%
  - mem%
  - virt%
  - procnum

- network ifconfig (ipaddress, connected, %errors, %missing, %overflow, %collisions) +RX/TX
  config:
  values:

- log lines (syslog)
  config:
  values:

- monitor - controller use old value while in validity
- monitor - use ref-checks

- sensor
  - daemon (status=running)
  - http
    store match results or string position
    set user-agent
    set post data
    set method
    match header
  - ftp/ftps (success, responsetime)
  - ssh zugriff (success, responsetime, #logins)
  - dir (exist, size)
  - user warn min=1 +who was on the machine 'last -10' oder last | grep 'still logged in'
  - hacking

- browse

  use casperjs with test-routine defined in extra file

- monitor - watch for new controler-configs

- monitor - controller short NAMES
  :xxx -> adding to current name
  ::xxx -> adding to parent name

Daemon

- monitor -d --daemon <time> run continously
- using interval time
- logging
- storage system

Reporting

- monitor-actor - class design
- monitor-actor - email
- monitor-actor - daemon
- monitor-actor - REST call
- monitor - controller rerun after time

Architecture

- local monitor running
- push to collector
- pull by collector
- REST Interface
  - POST /monitor/sensor/ping
  - POST /monitor/actor/cmd
  - GET /monitor/controller/name
  - GET /monitor/collector/name
  - http (with basic-auth)

Data collection

- last time ok
- first time of current state





Anytime
-------------------------------------------------

- make - istanbul using source maps

- validator maybe compliance to http://tools.ietf.org/html/draft-zyp-json-schema-04
- validator - string `values` with ref get values from string=>list, array=>values, object=>keys
- validator - field ref: 'sensors.*.sensor' # through any array/key element
- validator - ip (v4 or v6)
- validator - ipv4 /^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}$/
- validator - ipv6 /^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]).){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]).){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$/

- server - cluster support
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