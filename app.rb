puts 'Init app.rb'
require 'sinatra'

get '/meow' do
  content_type 'text/plain'
  'Gotta say meow'
end
