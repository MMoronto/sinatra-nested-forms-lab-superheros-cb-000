require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
      get '/' do
        erb :Super_hero
      end
      
      post '/teams' do
        @team_name = params[:team][:name]
        @team_name = params[:team][:name]
        
        params[:team][:super_heroes].each do |details|
          Super_hero.new(details)
        end
        @super_heroes = Super_hero.all
        
        erb :team
      end


end
