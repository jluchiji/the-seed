![the-seed](media/the-seed.png)

> The more modern, reliable and flexible replacement for [dotfiles](https://github.com/jluchiji/dotfiles).


## Setup
 - Install [Ansible](https://www.ansible.com/)
 - Add your hosts to `inventory.ini`
 - Run `ansible-playbook playbooks/all.yml`

### macOS Remote Provisioning
In order to remotely provision a macOS machine, you will need to do the following on that machine:
 - Allow Remove Login (Settings > Sharing)
 - Use `--ask-sudo-pass` argument when running `ansible-playbook`

## Testing
 - Install [Ansible](https://www.ansible.com/)
 - Install [Vagrant](https://www.vagrantup.com/)
 - `cd vagrant && vagrant up`
 - `ansible-playbook ../playbooks/all.yml`

## What does it do?

 - Installs XCode CLI tools (macOS only)
 - Installs [Homebrew](https://brew.sh/) (macOS only)
 - Installs various packages and apps
 - Sets up Git configuration
 - Sets up ZSH and [antibody](https://github.com/getantibody/antibody)
 - Installs GNU utilities and replaces macOS builtins
 - Installs [n](https://github.com/tj/n) and specified versions of [Node.js](https://nodejs.org)
 - Installs [go](https://golang.org/)
 - Configures system preferences
 - Pulls SSH keys from Github and adds them to `authorized_keys`

## What's up with the name?

It's a reference to [The Seed](http://swordartonline.wikia.com/wiki/World_Seed) from Sword Art Online, which is an SDK for creating new game worlds. This project is intended to do the same, just with development environments.

## Host Groups
Most host groups are OS-based, which is fairly self-explanatory. Note that there can be parent-child relationship between OS host groups; for example, the `linux` group is parent of both `debian` and `fedora` groups.

### `debian`
Hosts in this group are expected to run a Debian-like Linux distro. 

Examples include:
 - Debian
 - Ubuntu
 - Linux Mint

### `fedora`
Hosts in this group are expected to run a Fedora-like Linux distro.

Examples include:
 - Fedora
 - RHEL
 - CentOS

### `macOS`
Hosts in this group are expected to run MacOS.

### `ssh_target`
Hosts in this group will have their `authorized_keys` files initialized with public keys pulled from Github. Whatever SSH configuration you use to push/pull will also work for logging into the host.

## License
MIT
