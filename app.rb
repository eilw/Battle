require 'sinatra/base'

class Battle < Sinatra::base
  get '/' do
    'Hello Battle!'
  end

  run! if app_file == $0
end
