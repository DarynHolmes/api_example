class Server < Sinatra::Base
	
	configure do
	    set :id_counter, 1
	    set :teams, []
	    set :my_config_property, 'hello world'
	end

  	def teams
  		$teams ||= [] 
  	end

  	def id_counter
  		$id_counter ||= 1
  	end

  	get '/' do
    	"#{settings.my_config_property}"
  	end

	get '/teams' do
		list = []
		teams.each do | team | 
			team_hash = {}
			team_hash[:id] = id_counter
			team_hash[:name] = team.name
			list << team_hash		
		end
		list.to_json
	end

	post '/teams' do
		team = Team.new
		team.id = id_counter
		team.name = params['name']
		settings.teams << team
		id_counter += 1
		status 201
	end

end

Server.run!

# See below for non-module style server
# in server.rb use
# require 'sinatra'
# and not 
#require 'sinatra/base'

# $id_counter = 1
# $teams = []

# get '/teams' do
# 	list = []
# 	$teams.each do | team | 
# 		team_hash = {}
# 		team_hash[:id] = team.id
# 		team_hash[:name] = team.name
# 		list << team_hash		
# 	end
# 	list.to_json
# end

# post '/teams' do
# 	team = Team.new
# 	team.id = $id_counter
# 	team.name = params['name']
# 	$teams << team
# 	$id_counter += 1
# 	status 201
# end

