git:
  pkg.installed
vim:
  pkg.installed
openjdk-7-jdk:
  pkg.installed
gradle:
  pkg.installed
maven:
  pkg.installed
mercurial:
  pkg.installed
vagrant.packages:
  pkg.installed:
    - pkgs:
      - vagrant
      - libvirt-bin
      - kvm
      - virt-manager
      - zlib1g-dev
      - libvirt-dev
pidgin.packages:
  pkg.installed:
    - pkgs
      - pidgin
      - pidgin-sipe
      - krb5-user
/etc/krb5.conf
  file.managed:
    

vagrant plugin install vagrant-libvirt:
  cmd.run:
    - unless: vagrant plugin list | grep vagrant-libvirt 
