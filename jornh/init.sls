{% from 'top.sls' import user %}

mercurial:
  pkg.installed

include:
  - jornh/git
  - jornh/hg

hg clone https://Jorn86@bitbucket.org/Jorn86/card-collection-app /home/{{user}}/repositories/card-collection-app:
  cmd.run:
    - user: {{user}}
    - unless: test -d /home/{{user}}/repositories/card-collection-app/.hg
