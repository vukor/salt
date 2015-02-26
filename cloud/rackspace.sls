rackspace-monitoring-install:
  cmd.run:
    - name: 'rpm -Uvh http://meta.packages.cloudmonitoring.rackspace.com/centos-6-x86_64/rackspace-cloud-monitoring-meta-stable-1-0.noarch.rpm && yum install rackspace-monitoring-agent -y'

