gitconfig.create:
  file.managed:
    - name: /home/jornh/.gitconfig
    - user: jornh
    - group: jornh

gitconfig.append:
  ini.options_present:
    - name: /home/jornh/.gitconfig
    - sections:
        url "https://":
          insteadOf: git://
        credential:
          helper: cache
        user:
          email: jorn86@gmail.com
          name: Jorn Hertsig
        push:
          default: current
