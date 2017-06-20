require "rubygems"
require "sinatra"
require 'better_errors' if development?


configure :development do
 use BetterErrors::Middleware
 BetterErrors.application_root = __dir__
end

get "/" do
  erb :index
end

get "/quienes-somos" do
  erb :quienes_somos

end

get "/nuestro-menu" do
  erb :nuestro_menu
end

get "/ubicacion" do
  erb :ubicacion
end
