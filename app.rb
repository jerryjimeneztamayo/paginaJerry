require "rubygems"
require "sinatra"
require 'better_errors' if development?


configure :development do
 use BetterErrors::Middleware
 BetterErrors.application_root = __dir__
end

get "/" do
  @name = 2/0
  @apellido = "Jimenez"
  "Hola" + @name + @apellido 
end

get "/sub" do
  "Hola"
end
