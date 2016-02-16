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
          email: jorn86@gmail.com
          name: Jorn Hertsig
        push:
          default: current
