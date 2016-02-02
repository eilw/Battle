require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
  end

  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/names' do
    @name = params[:Player1_name]
    erb(:play)
  end
end
