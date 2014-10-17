
ToDo
=================================================

This is a working list of things which will be done the next weeks.

- config - test watch
- server - configs
- server - config integration
- server - start() with event
- server - stop() with event#
- server - reload on config change event


Towards Monitoring app
-------------------------------------------------

- config with value 0 in upgrade warnSecurity
- monitor test with missing config section in sensor for better error message

SENSORS

- iostat

  iostat -yk 1 1

    Linux 3.13.0-24-generic (samsung-R505)  13.10.2014  _i686_  (2 CPU)

    avg-cpu:  %user   %nice %system %iowait  %steal   %idle
              56,35    0,00    5,58    0,51    0,00   37,56

    Device:            tps    kB_read/s    kB_wrtn/s    kB_read    kB_wrtn
    sda               0,00         0,00         0,00          0          0
    scd0              0,00         0,00         0,00          0          0

  config:
    iowaitWarn
    iowaitFail
    device
    interval 1s
    tpsWarn
    readWarn 100kB
    writeWarn

  values:
    iowait
    tps
                     Indicate the number of transfers per second that were issued to the device. A transfer is an I/O request to the device. Multiple log‐
                     ical requests can be combined into a single I/O request to the device. A transfer is of indeterminate size.
    kB_read/s
           Indicate the amount of data read from the device expressed in a number of blocks (kilobytes, megabytes) per second. Blocks are equiv‐
           alent to sectors and therefore have a size of 512 bytes.
    kB_wrtn/s
           Indicate the amount of data written to the device expressed in a number of blocks (kilobytes, megabytes) per second.
    kB_read
           The total number of blocks (kilobytes, megabytes) read.

    kB_wrtn
           The total number of blocks (kilobytes, megabytes) written.


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