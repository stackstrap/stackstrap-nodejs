#
# Your StackStrap project specific states
#

include:
  - avahi

nvm_deps:
  pkg:
    - installed
    - names:
      - git
      - curl

install_nvm:
  cmd:
    - run
    - name: curl https://raw.github.com/creationix/nvm/master/install.sh | sh
    - unless: -d /home/vagrant/.nvm
    - user: vagrant
    - require:
      - pkg: nvm_deps

# vim: set ft=yaml et sw=2 ts=2 sts=2 :
