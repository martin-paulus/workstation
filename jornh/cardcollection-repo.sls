{% from 'top.sls' import user %}

hg clone https://Jorn86@bitbucket.org/jorn86/card-collection-app /home/{{user}}/repositories/card-collection-app:
  cmd.run:
    - user: {{user}}
    - unless: test -d /home/{{user}}/repositories/card-collection-app/.hg

cardcollection.config.create:
  file.managed:
    - name: /home/{{user}}/repositories/card-collection-app/.hg/hgrc
    - user: {{user}}
    - group: {{user}}

cardcollection.config.append:
  ini.options_present:
    - name: /home/{{user}}/repositories/card-collection-app/.hg/hgrc
    - sections:
        auth:
          bb.schemes: https
          bb.prefix: bitbucket.org/jorn86
          bb.username: Jorn86
        paths:
          default: https://bitbucket.org/jorn86/card-collection-app
        ui:
          username: Jorn86 <jorn86@gmail.com>
