name             'mailcatcher'
maintainer       'Bryan te Beek'
maintainer_email 'bryantebeek@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures MailCatcher'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.4'
recipe           'mailcatcher', 'Installs MailCatcher'
recipe           'mailcatcher::php', 'Setup PHP to use MailCatcher using sendmail_path'
