#
# Cookbook Name:: ant
# Attributes:: default
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

default['ant']['version']        = '1.9.4'
default['ant']['home']           = '/usr/local/ant'
default['ant']['url']            = "http://archive.apache.org/dist/ant/binaries/apache-ant-#{node['ant']['version']}-bin.tar.gz"
default['ant']['checksum']       = '66d3edcbb0eba11387705cd89178ffb65e55cd53f13ca35c1bb983c0f9992540'
default['ant']['install_method'] = "package"

default['ant']['libraries']      = {"ant-contrib" => "http://search.maven.org/remotecontent?filepath=ant-contrib/ant-contrib/1.0b3/ant-contrib-1.0b3.jar",
                                    "ivy" => "http://search.maven.org/remotecontent?filepath=org/apache/ivy/ivy/2.4.0-rc1/ivy-2.4.0-rc1.jar"}

default['ivy']['version']        = '2.4.0-rc1'
default['ivy']['url']            = "http://apache.mirrors.hoobly.com/ant/ivy/#{node['ivy']['version']}/apache-ivy-#{node['ivy']['version']}-bin-with-deps.zip"
default['ivy']['checksum']       = '76f96d8e68685626be67fc4434616c8354dc27d5fe46a5e8f985d48e5d6c3ec5'
