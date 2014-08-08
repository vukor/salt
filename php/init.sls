## install php pkg + modules
php-pkgs:
  pkg.latest:
    - pkgs:
      - php
      - php-cli
      - php-mysql
      - php-mbstring
      - php-gd
      - php-fpm
      - ImageMagick
  group.present:
    - name: www

## run and check service
php-fpm-service:
  service.running:
    - name: php-fpm
    - enable: True
    - full_restart: True
    - require:
      - pkg: php-pkgs
#    - watch:
#      - file: php-conf

## php config
/etc/php-fpm.conf:
  file.managed:
    - source: salt://php/files/php-fpm.conf

/etc/php-fpm.d/www.conf:
  file.managed:
    - source: salt://php/files/php-fpm.d/www.conf

/etc/php.ini:
  file.managed:
    - source: salt://php/files/php.ini

