#
# Cookbook Name:: wl_base
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'tcpdump'

include_recipe 'openssh'
include_recipe 'ntp'
include_recipe 'sysstat'
include_recipe 'users'
include_recipe 'users::sysadmins'
include_recipe 'sudo'
include_recipe 'zsh'
