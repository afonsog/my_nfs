include_recipe 'nfs::server'
server_nfs = node["my_nfs"]["server"]
directory server_nfs["mount_dir"] do
  owner	'root'
  group	'root'
  recursive	true
  action	:create
end

nfs_export server_nfs["mount_dir"] do
  network server_nfs["network"]
  writeable server_nfs["writeable"]
  sync true
  options server_nfs["mount_options"]
end
