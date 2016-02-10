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

gradleconfig.create:
  file.managed:
    - name: /home/jornh/.gradle/gradle.properties
    - source: salt://jornh/gradle.properties
    - user: jornh
    - group: jornh

include:
  - jornh/worcade

#https://Jorn86@bitbucket.org/Jorn86/card-collection-app:
#  hg.latest:
#    - target: /home/jornh/repositories/card-collection-app
#    - user: jornh

