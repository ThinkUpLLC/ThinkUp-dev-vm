# ThinkUp development virtual machine

Spin up a Ubuntu VM with a functioning ThinkUp installation and passing tests using Vagrant.

Warning: this virtual machine is intended for local development use only. Do not use in production.

## Requirements

* [Vagrant](https://vagrantup.com)
* [VirtualBox](https://www.virtualbox.org/)
* ```vagrant plugin install vagrant-bindfs```

## Usage

Run virtual machine:

    $ vagrant up

SSH in:

    $ vagrant ssh

Run ThinkUp tests:

```
   $ cd /var/www/default/thinkup/
   $ php tests/all_tests.php
```

Debug test output:

```
   $ cd /var/www/default/thinkup/
   $ TEST_DEBUG=1 php tests/TestToDebug.php > ../debug.html
```

In your host machine's browser, visit http://192.168.56.101/debug.html

See ThinkUp in your browser:

* http://thinkup.dev/mythinkup/
* thinkupuser@thinkup.dev / nice2bnice

Note: If thinkup.dev doesn't resolve, make sure the following line is in your host computer's /etc/hosts file:

    192.168.56.101 default thinkup.dev www.thinkup.dev


Adminer database admin:

* http://192.168.56.101/adminer/
* thinkup / nice2bnice

MailCatcher

* http://192.168.56.101:1080/

## Fork and modify

This Vagrant virtual machine was built with [PuPHPet](http://puphpet.com). To modify it for your own purposes, drag and drop puphpet/config.yaml onto (http://puphpet.com) and regenerate.
