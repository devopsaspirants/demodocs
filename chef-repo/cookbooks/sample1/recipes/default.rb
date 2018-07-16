#
# Cookbook:: sample1
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'httpd' do
       action :install
        
end

service 'httpd' do
       action :start       
        
end

file '/var/www/html/index.html' do
         action :create
        
        content "<html><body> Welcome to chef..</body></html>"
end
