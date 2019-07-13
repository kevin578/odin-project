def stock_picker(arr)
    days = {
        "profit" => 0,
        "lowerBound" => 0,
        "upperBound" => 0
    }

    arr.each_index { |index|
 
        for j in index..arr.length - 1 do
            firstDay = arr[index]
            secondDay = arr[j]
            
            dailyProfit = (secondDay - firstDay)
            
            if dailyProfit > days["profit"]
                days["profit"] = dailyProfit
                days["lowerBound"] = firstDay
                days["upperBound"] = secondDay
            end
        end
    }

    puts days
end



stock_picker([65,3,6,9,10,8,6,-1,10])