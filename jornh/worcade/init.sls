{% for repo in ['worcade','configuration','dollhouse', 'datasource' ,'topdesk-rest'] %}
https://github.com/teamsolar/{{repo}}.git:
  git.latest:
    - target: /home/jornh/repositories/solar/{{repo}}
    - user: jornh
    - unless: test /home/jornh/repositories/solar/{{repo}}/.git
{% endfor %}
