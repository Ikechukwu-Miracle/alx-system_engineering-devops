#!/usr/bin/env bash
# Install and configure Nginx using puppet

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Configure Nginx service to start on boot
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

# Create Nginx configuration file
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => template('my_module/nginx.conf.erb'),
  require => Package['nginx'],
  notify  => Service['nginx'],
}
