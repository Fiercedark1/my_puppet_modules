#Class: user
#
#This module manages the installation and configuration of users
#
#Author: Edwin Carrasquillo
#
# Date: May 16, 2016
#
# Usage: To dynamically add new users to a broad range of nodes that have the module user included.
#
# 
class user {
  user { 'k':
    ensure     => present,
    comment    => 'team user',
    home       => '/home/k',
    managehome => true
  }
  ssh_authorized_key { 'k_ssh':
    user  => 'k',
    type  => 'rsa',
    key   => 'key_code', #best to use a hiera .eyml file to encrypt this
  }
}