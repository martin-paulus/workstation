/usr/local/share/ca-certificates/rootca.tis.local.crt:
  file.managed:
    - source: salt://tis-root-certificate/rootca.tis.local.crt
    - listen_in:
      - cmd: update-ca-certificates

update-ca-certificates:
  cmd.wait
