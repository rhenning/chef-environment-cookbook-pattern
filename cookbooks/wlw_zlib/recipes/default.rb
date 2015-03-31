#
# Cookbook Name:: wlw_zlib
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'zlib'

if node[:wlw_zlib][:compile_time]
  Chef::Log.info 'Installing zlib headers at compile-time'
  r = resources(package: 'zlib-devel')
  r.action(:nothing)
  r.run_action(:install)
end
