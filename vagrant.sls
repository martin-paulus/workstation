vagrant.packages:
  pkg.installed:
    - pkgs:
      - vagrant
      - libvirt-bin
      - kvm
      - virt-manager
      - zlib1g-dev
      - libvirt-dev

vagrant plugin install vagrant-libvirt:
  cmd.run:
    - unless: vagrant plugin list | grep vagrant-libvirt
