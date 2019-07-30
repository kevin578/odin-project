require 'sinatra'
require 'sinatra/reloader'

number = rand(1..100)

def getMessage(num, guess)
  guess = guess.to_i
  if guess == nil
    return "Please guess a number"

  elsif num < guess
    return "too high!"
    
  elsif num > guess
    return "too low"
  end
  else 
    number = rand(1..100)
    return "Correct"
end

get '/' do
  guess = params["guess"]
  message = getMessage(number, guess)
  erb :index, :locals => {:number => number, :message => message}
end