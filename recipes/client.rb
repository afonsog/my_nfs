include_recipe 'nfs::default'

nfs_servers = node['my_nfs']['remote_servers']

nfs_servers.each do |key, val|
  
 
  #key.each do |element, value|
    #puts "Esto es elemento: #{element}"
    #puts "Esto es value: #{value}"
    #Create dest dir
    directory key[:mount_dir] do
      owner	'root'
      group	'root'
      recursive	true
      action	:create
    end

    #mount nfs
    mount key[:mount_dir] do
      device	key[:remote_nfs]
      fstype	key[:type]
      options	key[:options]
      action	[:mount, :enable]
    end

  #end     

end
#directory node['mount']['dest'] do
#  owner 'root'
#  group 'root'
#  mode '0755'
#  recursive true
#  action :create
#end
#
#mount node['mount']['dest'] do
#  device node['mount']['device']
#  fstype node['mount']['type']
#  options node['mount']['options']
#  action [:mount, :enable]
#end
