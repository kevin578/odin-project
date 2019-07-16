
def substrings(string, dict)
    newHash = Hash.new(0)


    dict.each do |word|
        if string.include? word
           newHash[word] += 1
        end
    end

    puts newHash

end



dictionary = ["below","down","go","going","horn","how", "low", "low","howdy","it","i","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
