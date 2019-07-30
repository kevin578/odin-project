words = ["dog", "cat", "bird"]

selectedWord = words.sample

get '/' do
    length = selectedWord.length
    erb :index, :locals => {:length => length}

end