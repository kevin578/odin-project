class UpperCaseLetter 
    @@shiftedValue
    def intialize(ascii, shift)   
        @ascii = ascii
        @shift = shift
    end

    def shift

    end


end



def cipher(message = "Please input a message", number = 0) 



    message.each_char { |c|
        @shiftedNumber = c.ord + number
        @newChar


        #caps 65 - 90

        #lowercase 97 - 122


        #check for value exceeding 90 go back to 65

        #check for value exceeding 122 go back to 97

        # if greater than 



    }



        # when @shiftedNumber > 90
        #     puts "lower too high"





        # if is in range go back add to value 

        #if is out of range stay the same


        


        # puts @shiftedNumber.chr


end


cipher("Hello there", 5)


