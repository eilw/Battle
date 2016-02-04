require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = params['Player 1']
    player2 = params['Player 2']
    $game = Game.new(Player.new(player1),Player.new(player2))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack' do
    @game = $game
    @game.attack
    session['Attack'] = params['action']
    if @game.game_over?
      redirect '/game_over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    @game = $game
    @attack = session['Attack']
    @player_waiting = @game.player_in_control

    erb :attack
  end

  get '/game_over' do
    @game = $game
    @player_won = @game.player_waiting
    erb :game_over
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
