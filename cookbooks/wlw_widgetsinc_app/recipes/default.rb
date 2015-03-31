#
# Cookbook Name:: wlw_widgetsinc_app
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'wl_app'

file '/etc/motd' do
  content "This box belongs to #{node[:wl_app][:client_name]}."
end
