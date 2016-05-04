name             'ant'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache 2.0'
description      'Installs/Configures ant'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.3'
%w( debian ubuntu centos redhat fedora ).each do |os|
  supports os
end

recipe 'ant::default', 'Installs and configures Ant'

depends 'ark'

source_url 'https://github.com/jtimberman/ant-cookbook' if respond_to?(:source_url)
issues_url 'https://github.com/jtimberman/ant-cookbook/issues' if respond_to?(:issues_url)