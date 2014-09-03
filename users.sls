www:
  group.present:
    - name: www

dev:
  user.present:
    - name: dev
    - fullname: account for developers
    - shell: /bin/bash
    - home: /home/dev
    - gid: www
    - groups:
      - mysql

dev-log:
  cmd.run:    
    - name: 'mkdir -m 770 /home/dev/logs && chown dev:www /home/dev/logs'

dev-www-dir:
  cmd.run:    
    - name: 'mkdir -m 770 /home/dev/www && chown dev:www /home/dev/www'
     
