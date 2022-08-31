require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base

  # This allows the app code to refresh
  # without having to restart the server.
  configure :development do
    register Sinatra::Reloader
  end

  # get '/names' do
  #   names = params[:names]
  #   return names
  # end

  post '/sort_names' do
    names = params[:names]
    p names
    spl_names = names.split(',')
    return spl_names.sort.join(",")

  end


end