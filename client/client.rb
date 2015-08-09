# http://www.rubyinside.com/nethttp-cheat-sheet-2940.html
# https://getpocket.com/a/read/498019066

require 'net/http'

uri = URI('http://localhost:4567/teams')


# Full control
http = Net::HTTP.new(uri.host, uri.port)

request = Net::HTTP::Post.new(uri.request_uri)
request.set_form_data({"name" => "Sea Hawks", "id" => "50"})

response = http.request(request)
puts response.code

request.set_form_data({"name" => "Seaweed", "id" => "51"})

response = http.request(request)
puts response


http = Net::HTTP.new(uri.host, uri.port)
response = http.request(Net::HTTP::Get.new(uri.request_uri))

puts response.code
puts response.body

