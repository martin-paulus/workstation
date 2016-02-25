libgcrypt11.source:
  file.managed:
    - name: /tmp/libgcrypt11_1.5.0-5+deb7u4_amd64.deb
    - source: salt://spotify/libgcrypt11_1.5.0-5+deb7u4_amd64.deb
    - unless: dpkg -s libgcrypt11

libcrypt11.install:
  cmd.run:
    - name: dpkg -i /tmp/libgcrypt11_1.5.0-5+deb7u4_amd64.deb
    - unless: dpkg -s libgcrypt11

libgcrypt11.remove:
  file.absent:
    - name: /tmp/libgcrypt11_1.5.0-5+deb7u4_amd64.deb
    - onlyif: dpkg -s libgcrypt11

spotify.repo:
  pkgrepo.managed:
    - humanname: spotify
    - name: deb http://repository.spotify.com stable non-free
    - file: /etc/apt/sources.list.d/spotify.list
    - keyid: BBEBDCB318AD50EC6865090613B00F1FD2C19886
    - keyserver: hkp://keyserver.ubuntu.com:80

spotify-client:
  pkg.installed
