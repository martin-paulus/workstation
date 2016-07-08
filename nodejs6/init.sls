nodejs6.repo:
  pkgrepo.managed:
    - humanname: nodejs6
    - name: deb https://deb.nodesource.com/node_6.x wily main
    - file: /etc/apt/sources.list.d/nodesource.list
    - key_url: salt://nodejs6/nodesource.gpg.key
nodejs:
  pkg.installed

npm:
  pkg.installed

npm.globals:
  npm.installed:
    - pkgs:
      - typings
      - webpack-dev-server
