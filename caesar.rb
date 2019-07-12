def cipher(message = "Please input a message", number = 0) 

    def 

    for i in 0...message.length

        @shiftedNumber = message[i].ord + number

        #@shiftedNumber

        case message[i].ord + number

        #check for value exceeding 90 go back to 65
        when @shiftedNumber > 90
            puts "lower too high"



        #check for value exceeding 122 go back to 97

        # if is in range go back add to value 

        #if is out of range stay the same


        


        puts @shiftedNumber.chr
    end

end


cipher("Hello there", 5)


