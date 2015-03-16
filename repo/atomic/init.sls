repo-atomic-install:
  cmd.run:
    - name: 'wget -q -O - http://www.atomicorp.com/installers/atomic | sed 's/!\ $NON_INT/$NON_INT/''

