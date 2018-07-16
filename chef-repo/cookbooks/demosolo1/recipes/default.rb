#
# Cookbook:: demosolo1
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

file '/home/Master/hello.txt' do
  content “Hello, this is my first cookbook recipe\n”
  action :create

end

execute 'ntp_configtest1' do
  command 'systemctl status ntpd'

end

execute 'ntp_configtest2' do
  command 'ntpstat'

end

execute 'ntp_configtest6' do
  command 'sudo systemctl stop ntpd.service'

end

execute 'ntp_configtest3' do
  command 'service ntpd status'

end

execute 'ntp_configtest3' do
  command 'sudo ntpdate pool.ntp.org'

end

execute 'ntp_configtest6' do
  command 'sudo systemctl start ntpd.service'

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

service 'ntpd' do
       action :start       
        
end

