#
# Cookbook Name:: custom
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
include_recipe "python::pip"

python_pip "django" do
  version "1.6.5"
  action :install
end

package "httpd-devel" do
  action :install
end

package "gcc" do
  action :install
end

python_pip "mod_wsgi" do
  action :install
end

