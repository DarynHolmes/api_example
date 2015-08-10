require 'sinatra'
require 'json'

Dir[File.dirname(__FILE__) + '/src/models/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/src/api/*.rb'].each {|file| require file }



