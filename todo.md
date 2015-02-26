
ToDo
=================================================

This is a working list of things which will be done the next weeks.


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
- expire store (like rrd)

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


File Upload: https://github.com/zeMirco/express-upload-progress
