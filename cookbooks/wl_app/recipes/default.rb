#
# Cookbook Name:: wl_app
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'wlw_zlib'
include_recipe 'nginx'

nginx_root_dir = directory '/var/www/weblinc' do
  owner node[:nginx][:user]
  group node[:nginx][:group]
  recursive true
end

file "#{nginx_root_dir.path}/index.html" do
  content "<h1>This page was generated for #{node[:wl_app][:client_name]}.</h1>"
  notifies :restart, 'service[nginx]'
end
