# CHANGELOG for MailCatcher

This file is used to list changes made in each version of MailCatcher.

## 0.1.4:

* Support for CentOS (sqlite instead of libsqlite3-dev)

## 0.1.3:

* Remove the 'eth' configuration
* Added the http-ip, http-port, smtp-ip and smtp-port configurations

## 0.1.2:

* Remove the dependency on PHP
* Added recipe ```mailcatcher::php``` for those using PHP

## 0.1.1:

* Ethernet interface is now configurable
* Only start MailCatcher when not already running
* Remove dependency on apache2
* Include the php recipe as this is a dependency

## 0.1.0:

* Initial release of MailCatcher
