#
# Cookbook Name:: mailcatcher
# Recipe:: default
#
# Copyright 2013, Bryan te Beek
#

# This is a dependency of MailCatcher
package "libsqlite3-dev"

# Install MailCatcher
gem_package "mailcatcher"

# Get eth ip
eth_ip = node[:network][:interfaces][node['mailcatcher']['eth']][:addresses].select{|key,val| val[:family] == 'inet'}.flatten[0]

# The command to start mailcatcher
command = "mailcatcher --http-ip #{eth_ip} --smtp-port #{node['mailcatcher']['port']}"

# Start MailCatcher
bash "mailcatcher" do
    not_if "ps ax | grep -E '#{command}'"
    code command
end
