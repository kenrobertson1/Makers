require 'sinatra'
require 'sinatra/reloader' 

get '/' do
  "hello!"
end

get '/secret' do
  "Hi Ken and Asimina"
end

get '/ken' do
  "hi ken"
end

get '/cat' do
  erb(:index)
end