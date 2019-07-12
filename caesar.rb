def cipher(message = "Please input a message", number = 0) 


    for i in 0...message.length
        
        #check for value exceeding 90 go back to 65

        #check for value exceeding 122 go back to 97

        # if is in range go back add to value 

        #if is out of range stay the same

        @shiftedNumber = message[i].ord + number
        
        

        puts @shiftedNumber.chr
    end

end


cipher("Hello there", 5)


