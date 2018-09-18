require 'sinatra/base'

module Demoapp
  class Web < Sinatra::Base

    get '/' do
      erb :index
    end

    get '/test/:myvar' do
      "we got " + params[:myvar]
    end
  end
end
