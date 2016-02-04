require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect to('/play')
  end

  get '/play' do
    @max_health = Player::MAX_HEALTH
    @player_1_hp = $player_1.hp
    @player_2_hp = $player_2.hp
    @player_1_name   = $player_1.name
    @player_2_name   = $player_2.name
    erb(:play)
  end

  post '/attack' do
    $player_2.reduce_hp
    redirect to('/attack_confirmation')
  end

  get '/attack_confirmation' do
    erb(:attack_confirmation)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
