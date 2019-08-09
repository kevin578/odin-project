words = ["dog", "cat", "bird"]

selectedWord = words.sample



get '/' do
    erb :index, :locals => {:length => selectedWord.length}
end