name              "riak_cs_create_admin_user"
maintainer        "Hector Castro"
maintainer_email  "hectcastro@gmail.com"
license           "Apache 2.0"
description       "Creates and configures an administrator for Riak CS."
version           "0.1.0"
recipe            "riak_cs_create_admin_user", "Configures an administrator for Riak CS"

%w{riak riak_cs}.each do |d|
  depends d
end

%w{ubuntu centos}.each do |os|
  supports os
end
