{% from 'top.sls' import user %}

winbind.packages:
  pkg.installed:
    - pkgs:
      - winbind
      - samba
      - smbclient
      - libnss-winbind
      - libpam-winbind
      - libpam-mount

/etc/samba/smb.conf:
  file.managed:
    - source: salt://tis/mounts/smb.conf
    - listen_in:
      - service: smbd
      - service: winbind

smbd:
  service.running
winbind:
  service.running

/etc/nsswitch.conf:
  file.managed:
    - source: salt://tis/mounts/nsswitch.conf

{% for file in ['account', 'auth', 'password', 'session', 'session-noninteractive'] %}
/etc/pam.d/common-{{file}}:
  file.managed:
    - source: salt://tis/mounts/pam.d/common-{{file}}
{% endfor %}

/etc/security/pam_mount.conf.xml:
  file.managed:
    - source: salt://tis/mounts/pam_mount.conf.xml

/home/{{user}}/.pam_mount.conf.xml:
  file.managed:
    - source: salt://tis/mounts/pam_mount.conf.user.xml
    - user: {{user}}
    - group: {{user}}
