krb5-user:
  pkg.installed

/etc/krb5.conf:
  file.managed:
    - source: salt://kerberos/krb5.conf
