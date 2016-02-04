require 'sinatra/base'
require 'player'
require 'game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect to('/play')
  end

  get '/play' do
    @max_health    = Player::MAX_HEALTH
    @player_1_hp   = $game.player_1.hp
    @player_2_hp   = $game.player_2.hp
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    erb(:play)
  end

  post '/attack' do
    $game.attack($game.player_2)
    redirect to('/attack_confirmation')
  end

  get '/attack_confirmation' do
    erb(:attack_confirmation)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
