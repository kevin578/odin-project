require 'sinatra'
require 'sinatra/reloader'
require './cipher.rb'

get '/' do
    text = params["text"]
    shift = params["shift"].to_i
    if text == nil 
        text = "Please enter a number"
        shift = 0
    end
    code = cipher(text, shift)
    erb :index, :locals => {:code => code}
end