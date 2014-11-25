## install postfix pkg
postfix-pkgs:
  pkg.latest:
    - pkgs:
      - postfix

## turn off local delivery
postfix-configuration:
  cmd.run:    
    - name: 'postconf -e mydestination='

## run and check service
postfix-service:
  service.running:
    - name: postfix
    - enable: True
    - full_restart: True

