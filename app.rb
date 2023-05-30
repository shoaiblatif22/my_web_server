require 'sinatra/base'

class Application < Sinatra::Base

  get '/' do
    return 'Hello!'
  end

  get '/posts' do
    return 'A list of posts'
  end

  post '/posts' do
    return 'A post was created'
  end
end