require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

  enable :sessions
  MAX_HEALTH = 100

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect to('/play')
  end

  get '/play' do
    @player_1_name   = $player_1.name
    @player_2_name   = $player_2.name
    erb(:play)
  end

  post '/attack' do
    redirect to('/attack_confirmation')
  end

  get '/attack_confirmation' do
    erb(:attack_confirmation)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
