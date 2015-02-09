require "sinatra"
require "sinatra/contrib"
require "sinatra/namespace"
require "sinatra/config_file"
require "sinatra/namespace"
require "docker"
require 'filesize'
require './app/controllers/application_controller'

Dir.glob('./lib/*.rb').each { |file| require file }
Dir.glob('./app/controllers/*.rb').each { |file| require file }


map('/') { run IndexController }
map('/create') { run CreateController }
map('/restart') { run ContainerController }
map('/info') { run InfoController }
map('/images') { run ImagesController }