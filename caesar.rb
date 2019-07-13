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



def cipher(message = "Please input a message", number = 0) 

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

    puts @finalString


        # when @shiftedNumber > 90
        #     puts "lower too high"





        # if is in range go back add to value 

        #if is out of range stay the same


        


        # puts @shiftedNumber.chr


end


cipher("Hello there", 5)


