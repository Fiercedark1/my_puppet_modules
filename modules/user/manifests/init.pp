#Class: user
#
#This module manages the installation and configuration of users
#
#Author: Edwin Carrasquillo
#
# Date: May 16, 2016
#
# Usage:
#
# 
class user {
  user { 'k':
    ensure     => present,
    comment    => 'team user',
    home       => '/home/k',
    managehome => true
  }
}