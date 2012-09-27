#
# Cookbook Name:: ant
# Attributes:: default
#
# Copyright (C) 2012 Kyle Allan (<kallan@riotgames.com>)
# 
# All rights reserved - Do Not Redistribute
#
default[:ant][:version]          = '1.8.2'
default[:ant][:home]             = '/usr/local/ant'
default[:ant][:url]              = "http://archive.apache.org/dist/ant/binaries/apache-ant-#{node[:ant][:version]}-bin.tar.gz"
default[:ant][:checksum]         = '664f48cfc9c4a9a832ec1dd9d2bed5229c0a9561e489dcb88841d75d3c2c7cf9'
default[:ant][:install][:source] = true

default[:ant][:libraries]        = {"ant-contrib" => "http://search.maven.org/remotecontent?filepath=ant-contrib/ant-contrib/1.0b3/ant-contrib-1.0b3.jar"}