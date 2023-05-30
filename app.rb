require 'sinatra/base'

class Application < Sinatra::Base

  get '/hello' do
    name = params[:name]

    return "Hello #{name}"
  end

  post '/submit' do
    name = params['name']
    message = params['message']
    "Thanks #{name}, you sent this message: '#{message}'"
  end






=begin
  get '/' do
    return 'Hello!'
  end

  get '/posts' do
    return 'A list of posts'
  end

  post '/posts' do
    return 'A post was created'
  end
=end
end