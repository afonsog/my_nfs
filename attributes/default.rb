#nfs client attributes
default['my_nfs']['client']['dest'] = "/opt/pepe"

default['my_nfs']['remote_servers'] =
                                  { 
                                  mount_dir: "#{default['my_nfs']['client']['dest']}/nfs-prod",
                                  remote_nfs: '192.168.9.201:/exports', 
                                  type: 'nfs', 
                                  options: %w(ro _netdev) 
                                  },
                                  { 
                                  mount_dir: "#{default['my_nfs']['client']['dest']}/nfs-prod-WEB",
                                  remote_nfs: '192.168.9.204:/exports', 
                                  type: 'nfs', 
                                  options: %w(ro _netdev) 
                                  },
                                  { 
                                  mount_dir: "#{default['my_nfs']['client']['dest']}/nfs-dev",
                                  remote_nfs: '192.168.9.202:/exports', 
                                  type: 'nfs', 
                                  options: %w(ro _netdev) 
                                  }

#nfs server attributes
default['my_nfs']['server']['writeable'] = false
default['my_nfs']['server']['mount_options'] = %w(no_root_squash)
default['my_nfs']['server']['mount_dir'] = '/exports'
default['my_nfs']['server']['network'] = '192.168.0.0/16'
