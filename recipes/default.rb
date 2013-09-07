#
# Cookbook Name:: mailcatcher
# Recipe:: default
#
# Copyright 2013, Bryan te Beek
#

# This is a dependency of MailCatcher
case node['platform_family']
    when "debian"
        package "sqlite"
    when "rhel", "fedora", "suse"
        package "libsqlite3-dev"
end

# Install MailCatcher
gem_package "mailcatcher"

# Generate the command
command = ["mailcatcher"]
command << "--http-ip #{node['mailcatcher']['http-ip']}"
command << "--http-port #{node['mailcatcher']['http-port']}"
command << "--smtp-ip #{node['mailcatcher']['smtp-ip']}"
command << "--smtp-port #{node['mailcatcher']['smtp-port']}"
command = command.join(" ")

# Start MailCatcher
bash "mailcatcher" do
    not_if "ps ax | grep -E 'mailcatche[r]'"
    code command
end
