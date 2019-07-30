class Letter
    def initialize(ascii, shift)   
        @ascii = ascii
        @shift = shift
    end
  
end


class LowerCaseLetter < Letter

    def shift
        @asciiValue
        if @ascii + @shift > 122
            return ((@ascii + @shift) - 122 + 97).chr
        else 
            return (@ascii + @shift).chr
        end
    end

end


class UpperCaseLetter < Letter
    
    def shift
        @asciiValue
        if @ascii + @shift > 90
            return ((@ascii + @shift) - 90 + 65).chr
        else 
            return (@ascii + @shift).chr
        end
    end

end

def cipher(message, number = 0) 
    if message == nil 
        return "Plesae enter a message"
    end

    
    
    @finalString = ""

    message.each_char { |c|
        @shiftedNumber = c.ord + number
        @newChar
   
        #letter = LowerCaseLetter.new(c.ord, number);


        if c.ord >= 97 && c.ord <= 122
            @finalString << LowerCaseLetter.new(c.ord, number).shift
        elsif c.ord >= 65 && c.ord <= 90
            @finalString << UpperCaseLetter.new(c.ord, number).shift
        else 
            @finalString << c
        end


    }

    return @finalString

end