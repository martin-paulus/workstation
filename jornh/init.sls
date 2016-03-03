{% from 'top.sls' import user %}

mercurial:
  pkg.installed

tortoisehg:
  pkg.installed

include:
  - jornh/git
  - jornh/hg
  - jornh/cardcollection-repo
  - spotify

spotify.settings:
  file.managed:
    - name: ~/.config/spotify/Users/jorn86-user/prefs
    - source: salt://spotify/prefs
    - unless: test -f ~/.config/spotify/Users/jorn86-user/prefs
    - user: {{user}}
    - group: {{user}}

/home/{{user}}/.bashrc:
  file.managed:
    - source: salt://jornh/bashrc
    - user: {{user}}
    - group: {{user}}

/etc/sysctl.conf:
  file.managed:
    - source: salt://jornh/sysctl.conf
