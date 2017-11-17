name              'my_nfs'
maintainer        'Gerónimo Afonso'
maintainer_email  'geronimo.afonso@mikroways.net'
license           'Apache 2.0'
description       'Cookbook to apply the minimal configuration we want to have on every server.'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

supports          'centos'
supports          'debian'
supports          'ubuntu'

depends           'apt',              '~> 2.9.2'
depends           'nfs',              '~> 2.4.1'
