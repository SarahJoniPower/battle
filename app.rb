require 'sinatra'

set :session_secret, "not super secret"

get '/' do
  "Hello - no exit!"
end

get '/secret' do
  "Super secret message"
end

get '/slightlylesssecret' do
  "Slightly less secret"
end

get '/anotherone' do
  'Here we are'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/form-only' do
  @name = params[:name]
  erb(:form)
end

post '/named-cat' do
  p params 
  @name = params[:name]
  erb(:index)
end