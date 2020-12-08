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

get '/cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
