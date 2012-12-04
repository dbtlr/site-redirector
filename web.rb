require 'rubygems'
require 'sinatra'
require 'socket'

get '*' do
  host     = Socket.gethostname
  new_host = "nodrew.com"
  
  host_map = {'nodrew.com' => 'blog.nodrew.com', 'www.nodrew.com' => 'blog.nodrew.com'}
  
  if host_map[host] 
    new_host = host_map[host]
  end

  p "http://"+new_host+"/"+params['splat'][0]
  redirect "http://"+new_host+"/"+params['splat'][0]
end
