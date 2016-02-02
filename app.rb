require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name = $name.name
    @name2 = $name2.name
    erb(:play)
  end

  post '/names' do
    $name = Player.new(params[:Player1_name])
    $name2 = Player.new(params[:Player2_name])
    redirect to('/play')
  end

  get '/attack' do
    @name = $name.name
    @name2 = $name2.name
    # $name2 = session[:name2]
    erb :attack
  end

  run! if app_file == $0

end
