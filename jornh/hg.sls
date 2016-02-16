{% from 'top.sls' import user %}

hgconfig.create:
  file.managed:
    - name: /home/{{user}}/.hgrc
    - user: {{user}}
    - group: {{user}}

hgconfig.append:
  ini.options_present:
    - name: /home/{{user}}/.hgrc
    - sections:
        auth:
          bb.schemes: https
          bb.prefix: bitbucket.org/Jorn86
          bb.username: Jorn86
        extensions:
          color: ''
          fetch: ''
          purge: ''
          rebase: ''
