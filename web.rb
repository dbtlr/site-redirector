require 'rubygems'
require 'sinatra'
require 'socket'

get '*' do
  host     = Socket.gethostname
  new_host = "dbtlr.com"
  host_map = {'nodrew.com' => 'dbtlr.com', 'www.nodrew.com' => 'dbtlr.com'}

  if host_map[host] 
    new_host = host_map[host]
  end

  redirect "http://"+new_host+params['splat'][0]
end
