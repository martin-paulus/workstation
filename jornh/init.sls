{% from 'top.sls' import user %}

mercurial:
  pkg.installed

include:
  - jornh/git
  - jornh/hg
  - spotify

hg clone https://Jorn86@bitbucket.org/Jorn86/card-collection-app /home/{{user}}/repositories/card-collection-app:
  cmd.run:
    - user: {{user}}
    - unless: test -d /home/{{user}}/repositories/card-collection-app/.hg

spotify.settings:
  file.managed:
    - name: ~/.config/spotify/Users/jorn86-user/prefs
    - source: salt://spotify/prefs
    - unless: test -f ~/.config/spotify/Users/jorn86-user/prefs
    - user: {{user}}
    - group: {{user}}
