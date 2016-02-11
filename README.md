Config machine from scratch

install salt-client: `sudo apt-get install salt-minion`

in `/etc/salt/minion`, set:
```
id: jornh
log_level: warning
file_client: local
local: True
file_roots:
  base:
    - /home/jornh/<this repo>
```

run salt: `sudo salt-call state.highstate`

