## Nginx
nginx-pkg:
  pkg.installed:
    - name: nginx
    - refresh: True
    - require:
      - cmd: nginx-repo
    #  group.present:
    #    - name: www

nginx-service:
  service.running:
    - name: nginx
    - full_restart: True
    - require:
      - pkg: nginx-pkg

webpkgs:
  pkg.installed:
    - pkgs:
      - php
      - php-cli
      - php-mysql
      - php-mbstring
      - php-gd
      - php-fpm
      - ImageMagick
      - mysql
      - mysql-server


## Configs
/etc/nginx:
  file.recurse:
    - source: salt://webserver/files/etc/nginx
    #- require:
    #   - pkg: nginx

/etc/php-fpm.conf:
  file.managed:
    - source: salt://webserver/files/etc/php-fpm.conf

/etc/php-fpm.d:
  file.recurse:
    - source: salt://webserver/files/etc/php-fpm.d

/etc/php.ini:
  file.managed:
    - source: salt://webserver/files/etc/php.ini



