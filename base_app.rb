require 'sinatra/base'
require 'sinatra/json'
require 'sinatra/reloader'

require 'active_record'
require 'yaml'
require 'json'

class BaseApp < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
    also_reload './app/*.rb'
  end

  Dir.glob('./app/models/*.rb').sort.each do |file|
    require file
  end

  Dir.glob('./app/controllers/*.rb').sort.each do |file|
    require file
  end

  Dir.glob('./config/initializers/*.rb').sort.each do |file|
    require file
  end

  before do
    if request.content_length.to_i > 0
      request.body.rewind
      @body = JSON.parse request.body.read, symbolize_names: true
    end
  end
end
