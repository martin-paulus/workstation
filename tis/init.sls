{% from 'top.sls' import user %}

pidgin.packages:
  pkg.installed:
    - pkgs:
      - pidgin
      - pidgin-sipe

include:
  - tis/root-certificate
  - ntp
  - kerberos
  - tis/mounts

/home/{{user}}/.m2/settings.xml:
  file.managed:
    - source: salt://tis/maven.settings.xml
    - user: {{user}}
    - group: {{user}}
