base:
  '*':
    - prerequisites
{% if not salt['file.file_exists']('/etc/waagent.conf') %}
    - cloud-init
{% endif %}
    - unbound
    - nginx
    - salt-bootstrap
    - salt
    - postgres-jdbc-driver
    - unbound
    - monitoring
{% if grains['os_family'] == 'Debian' %}
    - resolvconf
{% else %}
    - dhcp
{% endif %}
    - performance
    - custom