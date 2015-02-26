repo-atomic-install:
  file.managed:
    - source: salt://repo/atomic/files/atomic.sh
    - name: /tmp/atomic.sh
    - mode: 700
  cmd.run:
    - name: '/tmp/atomic.sh'

