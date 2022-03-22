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

get '/random-cat' do
  @name = ["Ken", "Asimina"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

