#
# Cookbook Name:: ant
# Recipe:: install_source
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

if node[:platform_family].eql?('mac_os_x')
  include_recipe "java-mac"
else
  include_recipe "java"
end
include_recipe "ark"

if node[:platform_family].eql?('mac_os_x')
  ark "ant" do
    url node['ant']['url']
    checksum node['ant']['checksum']
    home_dir node['ant']['home']
    version node['ant']['version']
    action :install
  end

  template "/etc/paths.d/ant" do
    mode 0755
    source "ant_path.erb"
  end

  # Set ANT_HOME
  bash "Set ANT_HOME" do
    user "root"
    code <<-EOH
(grep -q '^export ANT_HOME' /etc/profile && sed -i '' 's#^export ANT_HOME=.*#export ANT_HOME=/usr/local/ant/#' /etc/profile) || echo '\nexport ANT_HOME=/usr/local/ant/' >> /etc/profile
    EOH
  end
else
  ark "ant" do
    url node['ant']['url']
    checksum node['ant']['checksum']
    home_dir node['ant']['home']
    version node['ant']['version']
    append_env_path true
    action :install
  end

  template "/etc/profile.d/ant_home.sh" do
    mode 0755
    source "ant_home.sh.erb"
    variables(:ant_home => node['ant']['home'])
  end
end


node['ant']['libraries'].each do |library, library_url|
  ant_library library do
    url library_url
  end
end
