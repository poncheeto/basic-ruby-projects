# Create method 
def stock_picker(array)
    # Search array for highest integer
    if array.first == array.max
        array[0] = array[1]
    end
    # Assign to variable labeled 'buy'
    buy = array.max
    # Search array for lowest integer 
    if array.last == array.min
        array[-1] = array[-2]
    end
    # Assign to variable labeled 'sell'
    sell = array.min
end


        