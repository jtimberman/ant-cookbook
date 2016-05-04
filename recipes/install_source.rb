#
# Cookbook Name:: ant
# Recipe:: install_source
#
# Copyright 2012, Kyle Allan (<kallan@riotgames.com>)
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'ark'

ant_path = ::File.join(node['ant']['home'], 'bin', 'ant')

ark 'ant' do
  not_if do
    ::File.exist?(ant_path) &&
      "#{ant_path} -version | grep '#{node['ant']['version']}'"
  end
  url "#{node['ant']['url']}/apache-ant-#{node['ant']['version']}-bin.tar.gz"
  home_dir node['ant']['home']
  version node['ant']['version']
  append_env_path true
  action :install
end

template '/etc/profile.d/ant_home.sh' do
  mode 0755
  source 'ant_home.sh.erb'
  variables(ant_home: node['ant']['home'])
end

node['ant']['libraries'].each do |library, library_url|
  ant_library library do
    url library_url
  end
end
