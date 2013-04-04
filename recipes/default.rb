#
# Cookbook Name:: mailcatcher
# Recipe:: default
#
# Copyright 2013, Bryan te Beek
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Get eth1 ip
eth1_ip = node[:network][:interfaces][:eth1][:addresses].select{|key,val| val[:family] == 'inet'}.flatten[0]

# Install MailCatcher
gem_package "mailcatcher"

# Start MailCatcher
bash "mailcatcher" do
  code "mailcatcher --http-ip #{eth1_ip} --smtp-port #{node['mailcatcher']['port']}"
  only_if "ping #{(eth1_ip)}:#{node['mailcatcher']['port']} | grep unknown"
end

# Configure MailCatcher
template "#{node['php']['ext_conf_dir']}/mailcatcher.ini" do
  source "mailcatcher.ini.erb"
  owner "root"
  group "root"
  mode "0644"
  action :create
  notifies :restart, resources("service[apache2]"), :delayed
end
