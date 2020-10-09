# Create method 
def stock_picker(array)
    # Search array for highest integer
        # Assign to variable labeled 'buy'
        if array.first == array.max
            array[0] = array[1]
            buy = array.max
        end
        p buy
        # Search array for lowest integer 
            # Assign to variable labeled 'sell'
        if array.last == array.min
            array[-1] = array[-2]
            sell = array.min
        end
        p sell
end


        