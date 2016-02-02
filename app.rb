require 'sinatra/base'

class Battle < Sinatra::Base
  # get '/' do
  #   'Hello Battle!'
  # end
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name = session[:name]
    @name2 = session[:name2]
    erb(:play)
  end

  post '/names' do
    session[:name] = params[:Player1_name]
    session[:name2] = params[:Player2_name]
    redirect to('/play')
  end



  run! if app_file == $0

end
