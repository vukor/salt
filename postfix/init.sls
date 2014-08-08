## install postfix pkg
postfix-pkgs:
  pkg.latest:
    - pkgs:
      - postfix

## run and check service
postfix-service:
  service.running:
    - name: postfix
    - enable: True
    - full_restart: True

