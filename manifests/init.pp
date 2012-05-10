#
# redis module
#
# Copyright 2012, Atizo AG
# Simon Josi simon.josi+puppet(at)atizo.com
#
# This program is free software; you can redistribute 
# it and/or modify it under the terms of the GNU 
# General Public License version 3 as published by 
# the Free Software Foundation.
#

class redis {
  package{'redis':
    ensure => present,
  }
  service{'redis':
    ensure => running,
    enable => true,
    hasstatus => true,
    require => Package['redis'],
  }
}
