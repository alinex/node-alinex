
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

- sysupdate +last actualization
apt-get update

  apt-get -s upgrade | grep Inst | awk -F '\\]? [\\[(]?' '{print $2,$3,$4}'
  aptitude changelog rsyslog 2>/dev/null| sed -e '1d;/5.8.11-3/,$d'

apt (1.0.1ubuntu2.5) trusty-security; urgency=low|medium|high

  * SECURITY UPDATE:
      - cmdline/apt-get.cc: fix insecure tempfile handling in
        apt-get changelog (CVE-2014-7206). Thanks to Guillem Jover

 -- Michael Vogt <michael.vogt@ubuntu.com>  Wed, 08 Oct 2014 10:38:50 +0200

config:
  timeLowWarn 14d
  timeLowFail -
  timeMediumWarn 0
  timeMediumFail 7d
  timeHighWarn 0
  timeHighFail 3d
  timeSecurityWarn 0
  timeSecurityFail 14d

values:
  numSecurity
  numLow
  numMedium
  numHigh
  numTotal
  oldestSecurity
  oldestLow
  oldestMedium
  oldestHigh
  oldestTotal

analysis: (ordered by security,urgency, date)
  pack inst-version -> new-version (repository) SECURITY UPDATE
    - changes


- iostat +iotop (if installed)

  cat /proc/diskstats

    The /proc/diskstats file displays the I/O statistics
    of block devices. Each line contains the following 14
    fields:
     1 - major number
     2 - minor mumber
     3 - device name
     4 - reads completed successfully
     5 - reads merged
     6 - sectors read
     7 - time spent reading (ms)
     8 - writes completed
     9 - writes merged
    10 - sectors written
    11 - time spent writing (ms)
    12 - I/Os currently in progress
    13 - time spent doing I/Os (ms)
    14 - weighted time spent doing I/Os (ms)
    For more details refer to Documentation/iostats.txt

  /proc/schedstat
  /proc/stat
  /proc/uptime -> just restarted



- monitor - controller short NAMES
  :xxx -> adding to current name
  ::xxx -> adding to parent name

- monitor - cli
  run once, list results
  -d --daemon <time> run continously
  -c --controller <name> run only this controller
  -l --list show what will be checked
  -t --tree dependency tree

- monitor-sensors system
  - cpu +%wa
  - process (cpu%, mem%, virt%, procnum)
  - network ifconfig (ipaddress, connected, %errors, %missing, %overflow, %collisions) +RX/TX
  - log lines (syslog)

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

Web Interface


Anytime
-------------------------------------------------

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