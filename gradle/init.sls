{% from 'top.sls' import user %}

gradle:
  pkg.installed

gradleconfig:
  file.managed:
    - name: /home/{{user}}/.gradle/gradle.properties
    - source: salt://gradle/gradle.properties
    - user: {{user}}
    - group: {{user}}
