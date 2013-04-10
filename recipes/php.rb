#
# Cookbook Name:: mailcatcher
# Recipe:: php
#
# Copyright 2013, Bryan te Beek
#

# Publish PHP configuration
template "#{node['php']['ext_conf_dir']}/mailcatcher.ini" do
    source "mailcatcher.ini.erb"
    owner "root"
    group "root"
    mode "0644"
    action :create
end
