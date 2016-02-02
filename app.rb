require 'sinatra/base'

class Battle < Sinatra::Base
  # get '/' do
  #   'Hello Battle!'
  # end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @name = params[:Player1_name]
    @name2 = params[:Player2_name]
    erb(:play)
  end

  run! if app_file == $0

end
