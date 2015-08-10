class Server < Sinatra::Base
	
	configure do
	    set :id_counter, 1
	    set :teams, []
	    set :my_config_property, 'hello world'
	end

	get '/teams' do
		list = []
		settings.teams.each do | team | 
			team_hash = {}
			team_hash[:id] = team.id
			team_hash[:name] = team.name
			list << team_hash		
		end
		list.to_json
	end

	post '/teams' do
		team = Team.new
		team.id = settings.id_counter
		team.name = params['name']
		settings.teams << team
		settings.id_counter += 1
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

