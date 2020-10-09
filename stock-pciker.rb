# Create method 
def stock_picker(array)
    # Search array for highest integer that's not first
    if array.first == array.max
        array[0] = array[1]
    end
    # Assign max to variable labeled 'buy'
    sell = array.max
    
    # Search array for lowest integer that's not last
    if array.last == array.min
        array[-1] = array[-2]
    end
    # Assign min to variable labeled 'sell'
    buy = array.min

    # Assign buy/sell into an array labeled 'profit'
    profit = [array.index(buy),array.index(sell)]
    p profit
end


        