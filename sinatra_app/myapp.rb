# myapp.rb
require 'sinatra'
require 'json'
require 'erb'
require 'haml'
require "rdiscount"

get '/one' do
	sleep(5)
  	response.headers['Access-Control-Allow-Origin'] = '*'
  	{"myname" => "heisenburg", "age" => 1}.to_json
end

get '/two' do
	sleep(5)
	response.headers['Access-Control-Allow-Origin'] = '*'
  	{"myname" => "max", "age" => 2}.to_json
end

get '/three' do
	sleep(5)
	response.headers['Access-Control-Allow-Origin'] = '*'
  	{"myname" => "three", "age" => 3}.to_json
end

get '/html' do
  send_file 'views/index.html'
end

get '/erb' do
  erb :erb_template
end

get '/haml' do
  haml :haml_template
end

get '/markdown' do
  markdown :markdown_template
end