repo-epel-install:
  cmd.run:
    - name: 'rpm -q epel-release || rpm -Uvh https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm' 

