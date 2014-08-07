## install mysql pkg
mysql-pkgs:
  pkg.latest:
    - pkgs:
      - mysql
      - mysql-server

## run and check service
mysql-service:
  service.running:
    - name: mysqld
    - full_restart: True
    - require:
      - pkg: mysql-pkgs
#    - watch:
#      - file: mysql-conf

## mysql config
mysql-conf:
  file.managed:
    - name: /etc/my.cnf
    - source: salt://mysql/files/my.cnf
    - user: root
    - group: root
    - mode: 644

## mysql logrotate
mysql-logrotate:
  file.managed:
    - name: /etc/logrotate.d/mysqld
    - source: salt://mysql/files/logrotate.d/mysqld
    - user: root
    - group: root
    - mode: 644

## mysql log
mysql-log:
  cmd.run:    
    - name: 'mkdir -m 770 /var/log/mysql && chown mysql:mysql /var/log/mysql'

#  file.directory:
#    - name: /var/log/mysql
#    - user:mysql
#    - group: mysql
#    - mode: 770
#    - makedirs: True

