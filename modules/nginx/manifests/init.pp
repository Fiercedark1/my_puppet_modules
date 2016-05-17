#Class: nginx
#
#This module manages the installation and configuration of nginx
#
#Author: Edwin Carrasquillo
#
# Date: May 16, 2016
#
# Requires: default.conf in the files directory, and an IP once configuration is ready.
#
# Usage: To install nginx as a webserver for hosting a website. This is currently set to pull a default.conf file where the IP is not yet specified.
#
# 
class nginx {
  package { 'nginx':
    ensure    => installed,
    owner     => 'root',
    group     => 'root',
    mode      => '0644",
}
  File {
    ensure    => file,
    owner     => 'root',
    group     => 'root',
    mode      => '0600',
}

  service { 'nginx':
    ensure    => running,
    enable    => true,
    subscribe => File['default.conf'],
}

  file { 'default.conf':
    path      => '/etc/nginx/conf.d/default.conf',
    require   => Package['nginx'],
    source    => "puppet:///modules/nginx/default.conf"
}