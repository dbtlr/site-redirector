require 'rubygems'
require 'sinatra'
require 'socket'

get '*' do
  host     = Socket.gethostname
  new_host = "nodrew.com"
  host_map = {'Drews-MacBook-Pro.local' => 'nodrew.com', 'nodrew.com' => 'blog.nodrew.com', 'www.nodrew.com' => 'blog.nodrew.com'}

  if host_map[host] 
    new_host = host_map[host]
  end

  p HOSTNAME
  p "http://"+new_host+params['splat'][0]+host
end
