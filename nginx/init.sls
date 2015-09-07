## install nginx off repo
nginx-repo:
  cmd.run:    
    - name: 'rpm -Uvh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm'

## install nginx pkg
nginx-pkg:
  pkg:
    - latest
    - name: nginx
    - refresh: True
    - required:
      - cmd: nginx-repo
  group.present:
    - name: www

## run and check service
nginx-service:
  service.running:
    - name: nginx
    - enable: True
    - full_restart: True
    - require:
      - pkg: nginx-pkg
    - watch:
      - file: nginx-conf

## nginx config
nginx-conf:
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://nginx/files/nginx.conf
    - user: root
    - group: root
    - mode: 644

## nginx config vhost
nginx-vhosts:
  file.recurse:
    - name: /etc/nginx/hosts
    - source: salt://nginx/files/hosts

## logrotate config
logrotate-conf:
  file.managed:
    - name: /etc/logrotate.d/www
    - source: salt://nginx/files/logrotate-www.conf
    - user: root
    - group: root
    - mode: 644

