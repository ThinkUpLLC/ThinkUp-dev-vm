# ThinkUp development virtual machine

Spin up a Ubuntu VM with a functioning ThinkUp installation and passing tests.

Warning: this virtual machine is intended for local development use only. Do not use in production.

## Requirements

* Vagrant
* VirtualBox
* vagrant plugin install vagrant-bindfs

## Usage

Run virtual machine:

$ vagrant up

SSH in:

$ vagrant ssh

Run ThinkUp tests:

$ cd /var/www/default/thinkup/
$ php all_tests.php

Debug test output:

$ cd /var/www/default/thinkup/
$ TEST_DEBUG=1 php tests/TestToDebug.php > ../debug.html

Then go to  http://192.168.56.101/debug.html

See ThinkUp in your browser:

* http://thinkup.dev/mythinkup/
* thinkupuser@thinkup.dev / nice2bnice

Adminer database admin:

* http://192.168.56.101/adminer/
* thinkup / nice2bnice

MailCatcher

* http://192.168.56.101:1080/

## Fork and modify

This Vagrant virtual machine was built with http://puphpet.com. To modify it for your own purposes, drag and drop puphet/config.yaml onto puphpet.com and regenenerate.