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
          helper: '"cache --timeout=28800"'
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

#cardcollection:
#  hg.clone:
#    - cwd: https://Jorn86@bitbucket.org/Jorn86/card-collection-app
#    - repository: /home/jornh/repositories/card-collection-app
#    - user: jornh
#    - unless: test -d /home/jornh/repositories/card-collection-app/.hg

hgconfig:
  ini.options_present:
    - name: /home/jornh/.hgrc
    - sections:
        auth:
          bb.schemes: https
          bb.prefix: bitbucket.org/Jorn86
          bb.username: Jorn86
# Salt does not seem to understand empty values (setting None instead, which breaks hg)
#        extensions:
#          purge:
#          color:
#          fetch:
#          rebase:
