require "rubygems"
require "sinatra"

get "/" do
  @name = 'IRStrat'
  "Hola" + @name
end

get "/sub" do
  "Hola"
end
