name             "ant"
maintainer       "Opscode, Inc."
maintainer_email "cookbooks@opscode.com"
license          "Apache 2.0"
description      "Installs/Configures ant"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "2.2.0"
%w{ debian ubuntu centos redhat fedora mac_os_x }.each do |os|
  supports os
end

recipe "ant::default", "Installs and configures Ant from a package"

depends "java"
depends "ark"
