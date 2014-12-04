
ToDo
=================================================

This is a working list of things which will be done the next weeks.

- publish node-validator


FR
  implement retry
  test retry
  dynamic retry timeout
  add events
- publish dvb-media
  update on processing
  test on processing





  minLoad = 0.8 maxLoad = 4
  wait if %load > min + ((max-min) * prio)
  # prio 0: load 0.8
  # prio 0.3: load 1.8
  # prio 1: load 4
  minWait = 10s maxWait = 600s
  wait time = min + ((max-min) * (1-prio))

  # prio 0: 600s
  # prio 0.3: 423s
  # prio 1: 10s
  prio *= 1.1 on each wait
  # 0.1 | 0.11 | 0.12 | 0.13 | 0.14 | 0.16 | 0.17 | 0.19 | 0.21
  # von 0.1 auf 1.0: 26 steps, 2.2h

  minRetry = 10s maxRetry = 600s
  retry time = min + ((max-min) * (1-prio))
  # prio 0: 600s
  # prio 0.3: 423s
  # prio 1: 10s
  prio *= 0.9 on each retry
  # priority goes down on each additional try


- config - test watch
  give config to app as class or object
  search for files in src

- server:
  load multiple times on test
  cluster support
  configs
  -> restrictIP
  -> session handling
  -> toobusy
  -> forceDomain
  -> logging
  -> switch uid gid
  deliver data
  -> start page
  -> static files from var structure (overloada
  -> jade
  -> stylus
  reload on config change event
  -> reload port
  REST support
  Module support
  -> mount path
  -> own routing
  -> different static dir
  -> different view dir



MC modules
-------------------------------------------------

- dvb-prepare
- mc
  - queue (redis)
  - rest
    - server
  - process
  - mongo (store)

- make
  -c doc --publish
    into gh-pages
- media1/2
  checkout gh-pages in /nfs/git/doc/dvb-media
  set package.json document location


Towards Monitoring app
-------------------------------------------------

- sensor results mit von/bis zeit
- Show tree mit "partly" angabe bei down oder average

### SENSORS
https://www.zabbix.com/documentation/2.4/manual/config/items/itemtypes/zabbix_agent

- base display array/object in format()

- monitor-sensor - new minor version

- processes
  config:
  - user - user name (default is “all users”)
  - cmdline - filter by command line (it is a regular expression)
  - name - process name (default is “all processes”)
  values:
  - procnum
  - user, pid, cpu%, mem%, vss, rss, term, state, start, time,

  cat /proc/<pid>/....

- ssh
  config:
    user
    host
    port
    password or publicKey, privateKey, passphrase
    timeout
    match
    cmd
    response
  values:
    connecttime
    matched
    matches
    responsematched
    responsematches

- uptime
  values:
    uptime
    boottime

  /proc/uptime -> just restarted

- http
  config:
    set user-agent
    set post data
    set method

- filestat
  config:
    path (file or dir)
  values:
    size
    type f,d,s
    mimetype
    atime, mtime, ctime

  fail if not exists

- dnsrecord
  config:
    dns - IP address of DNS server (leave empty for the default DNS server, ignored on Windows)
    zone - zone to test the DNS
    type - record type to be queried (default is SOA)
    timeout (ignored on Windows) - timeout for the request in seconds (default is 1 second)
    count (ignored on Windows) - number of tries for the request (default is 2)
  values:
    ip
    responsetime

  > dig +trace +additional manage.divibib.com

- dns (server)
  config:
    dns - IP address of DNS server (leave empty for the default DNS server, ignored on Windows)
    zone - zone to test the DNS
    type - record type to be queried (default is SOA)
    timeout (ignored on Windows) - timeout for the request in seconds (default is 1 second)
    count (ignored on Windows) - number of tries for the request (default is 2)
  values:
    num
    list array of objects

- users
  config:
    range (interval)
    loggedin bool

  values:
    num
    list object with login time

  'last -10' oder last | grep 'still logged in'

- ftp/sftp
  config:
    host
    port
    user
    password
    match server message
  values:
    responsetime
    matched
    matches

- smtp/pop/imap
  config:
    host
    port
    match server message
  values:
    responsetime
    matched
    matches

- daemon
  config:
    name
  values:
    running bool
    uptime

- sensor (hradware)
  https://www.zabbix.com/documentation/2.4/manual/appendix/items/sensor
  config:
    device - device name
    sensor - sensor name

- SNMP (printer...)
  snmpwalk -v 2c -c public <host IP> .
  snmpget -v 2c -c public -On 10.62.1.22 IF-MIB::ifInOctets.3

- hacking

- JMX
  Config:
    host
    port

- ODBC

- log (syslog,...)
  config:
    file - full path and name of log file
    date - pattern for date
    encoding - code page identifier
    match - regular expression describing the required pattern
  values:
    range (date-date)
    num
    matches



### Others

- monitor - controller use old value while in validity
- monitor - use ref-checks

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
