ntp:
  pkg.installed

ntp.service:
  service.running:
    - name: ntp

/etc/ntp.conf:
  file.managed:
    - source: salt://ntp/ntp.conf
    - listen_in:
      - service: ntp.service
