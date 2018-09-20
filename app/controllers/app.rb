# app.rb

class ApplicationController < Sinatra::Base
  configure do
    set :views, "app/views"
    set :public_dir, "public"
  end

  get '/' do
    erb :index
  end

  get '/about' do
    erb :about
  end

# A similar way to do this
#
# get '/recipes/index' do
#   erb :'recipes/show'
# end
#
# # Or the other way:
# get '/recipes/index' do
#   erb 'recipes/show'.to_sym
# end

# if you need to have multiples

# get '/recipes/:id' do
#   # The :id is passed through the URL,
#   # which is accessible in the params hash.
#   # Use it to assign a recipe to an instance variable
#   @recipe = Recipe.find(params[:id])
#   erb :'recipes/show'
# end

  # and more routes...
end
