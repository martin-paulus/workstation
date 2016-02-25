{% from 'top.sls' import user %}

gitconfig.create:
  file.managed:
    - name: /home/{{user}}/.gitconfig
    - user: {{user}}
    - group: {{user}}

gitconfig.append:
  ini.options_present:
    - name: /home/{{user}}/.gitconfig
    - sections:
        url "https://":
          insteadOf: git://
        credential:
          helper: '"cache --timeout=28800"'
        user:
          email: j.hertsig@topdesk.com
          name: Jorn Hertsig
        push:
          default: current

workstation.gitconfig.create:
  file.managed:
    - name: /home/{{user}}/repositories/workstation/.git/config
    - user: {{user}}
    - group: {{user}}

workstation.gitconfig.append:
  ini.options_present:
    - name: /home/{{user}}/repositories/workstation/.git/config
    - sections:
        user:
          email: jorn86@gmail.com
