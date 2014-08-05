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
      
