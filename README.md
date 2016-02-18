Config machine from scratch

install salt-client: `sudo apt-get install salt-minion`

in `/etc/salt/minion`, set:
```
id: <your_username>
log_level: warning
file_client: local
local: True
file_roots:
  base:
    - </path/to/this/repo> # must be absolute path
```

Join the domain:
```
sudo -i
salt-call state.highstate
kinit <username>@TIS.LOCAL # case sensitive
net ads join -k createcomputer="Delft/Workstations/Linux Machines"
```

Restart, and log in with your domain credentials
