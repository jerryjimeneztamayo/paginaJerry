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
  # Hash para los empleados
  empleado1 = { nombre: "Jerry Jiménez", puesto: "Gerente", correo: "jjimenez@student.com"}
  empleado2 = {nombre: "Carlos Segura", puesto: "Cajero", correo: "csegura@student.com"}
  empleado3 = {nombre: "Adriana Carrillo", puesto: "Cajero", correo: "acarrillo@student.com"}
  empleado4 = {nombre: "Pedro Estrella", puesto: "Mesero", correo: "no aplica"}
  empleado5 = {nombre: "Esmeralda Aquino", puesto: "Mesero", correo: "no aplica"}
  empleado6 = {nombre: "Fabiola Alcocer", puesto: "Mesero", correo: "no aplico" }
end

get "/nuestro-menu" do
  erb :nuestro_menu
end

get "/ubicacion" do
  erb :ubicacion
end
