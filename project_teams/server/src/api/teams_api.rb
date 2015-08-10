$id_counter = 1
$teams = []

get '/teams' do
	list = []
	$teams.each do | team | 
		team_hash = {}
		team_hash[:id] = team.id
		team_hash[:name] = team.name
		list << team_hash		
	end
	list.to_json
end

post '/teams' do
	team = Team.new
	team.id = $id_counter
	team.name = params['name']
	$teams << team
	$id_counter += 1
	status 201
end