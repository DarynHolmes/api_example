# http://www.rubyinside.com/nethttp-cheat-sheet-2940.html

require 'net/http'

uri = URI('http://localhost:4567/teams')

http = Net::HTTP.new(uri.host, uri.port)

request = Net::HTTP::Post.new(uri.request_uri)

request.set_form_data({"name" => "Sea Hawks"})
response = http.request(request)
puts response.code
puts response.body

request.set_form_data({"name" => "Seaweed"})
response = http.request(request)
puts response.code
puts response.body

http = Net::HTTP.new(uri.host, uri.port)
response = http.request(Net::HTTP::Get.new(uri.request_uri))
puts response.code
puts response.body

