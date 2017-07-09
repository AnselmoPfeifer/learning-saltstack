apache2:
  pkg:
    - installed

restart_apache2:
    service.running:
        - name: apache2
        - enable: true