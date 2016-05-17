#Author: Edwin Carrasquillo
#
#Date: May 16, 2016
#
#Description: This is the site.pp file and it will handle the node configuration processes as well as the grouped packages to install
#
#
node default {
  include user
}

node 'web01.example.com' {
  include user
  include nginx
}
