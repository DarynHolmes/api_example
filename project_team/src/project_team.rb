require 'sinatra'
require 'json'

Dir[File.dirname(__FILE__) + '/project_team/models/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/project_team/services/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/project_team/api/*.rb'].each {|file| require file }



