#
# Cookbook:: sample
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
execute 'ntp_configtest1' do
  command 'systemctl status ntpd'
 
end

execute 'ntp_configtest2' do
  command 'ntpstat'

end

execute 'ntp_configtest3' do
  command 'service ntpd status'

end

execute 'ntp_configtest4' do
  command 'sudo netstat -ntlp'

end

execute 'ntp_configtest5' do
  command 'ip addr show | grep dynamic'

end

package 'ntp' do
       action :install
        
end

service 'ntpd' do
       action :start       
        
end

file '/root/demo.txt' do
     action :create
     content "Welcome to Chef cookbook\n"
     owner 'root'
     group 'root'
     mode '0755'
end
      
