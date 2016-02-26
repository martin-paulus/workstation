{% from 'top.sls' import user %}

{% for repo in ['worcade','configuration','dollhouse', 'datasource' ,'topdesk-rest', 'ping', 'salt'] %}
https://github.com/teamsolar/{{repo}}.git:
  git.latest:
    - target: /home/{{user}}/repositories/solar/{{repo}}
    - user: {{user}}
    - unless: test -d /home/{{user}}/repositories/solar/{{repo}}/.git
{% endfor %}
