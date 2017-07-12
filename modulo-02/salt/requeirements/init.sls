# packages basics
essentials-packages:
    pkg.installed:
        - pkgs:
            - bash
            - vim-nox
            - build-essential
            - git
            - nodejs
            - ntp
            - curl
            - htop
            - python-software-properties
            - software-properties-common
            - apache2-utils
            - ruby

# install gem
install_bundler:
    gem.installed:
      - name: serverspec
