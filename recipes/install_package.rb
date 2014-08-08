#
# Cookbook Name:: ant
# Recipe:: install_package
#
# Copyright 2012, Kyle Allan (<kallan@riotgames.com>)
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

include_recipe "java"

ant_pkgs = (node[:platform_family].eql?('rhel')) && %w(ant ant-contrib) || %w(ant ant-contrib ivy)

ant_pkgs.each do |pkg|
  package pkg do
    action :install
  end
end

if node[:platform_family].eql?('rhel')
  ark "ivy" do
    url node['ivy']['url']
    checksum node['ivy']['checksum']
    version node['ivy']['version']
    action :install
  end

  link '/usr/share/java/ivy.jar' do
    to "/usr/local/ivy/ivy-#{node['ivy']['version']}.jar"
    action :create
  end

  link '/usr/share/ant/lib/ivy.jar' do
    to '/usr/share/java/ivy.jar'
    action :create
  end
end
