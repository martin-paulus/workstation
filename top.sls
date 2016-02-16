{% set user = salt['environ.get']('SUDO_USER') %}

base:
  '*':
    - workstation
  '*_tis':
    - tis
  '{{user}}*':
    - {{user}}
