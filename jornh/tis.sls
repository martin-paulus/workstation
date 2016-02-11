/home/jornh/.pam_mount.conf.xml:
  file.managed:
    - source: salt://tis-mounts/pam_mount.conf.xml
    - user: jornh
    - group: jornh
