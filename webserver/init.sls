webpkgs:
  pkg.installed:
    - pkgs:
      - nginx
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


nginx:
  service:
    - running
  group.present:
    - name: www

