def stock_picker(array)
    if array.first == array.max
      # If highest price first, set second highest to sell variable
      sell = array.max(2).last
    else
      sell = array.max
    end

    if array.last == array.min
      # If lowest price last, set second lowest to buy variable
      buy = array.min(2).last
    else
      buy = array.min
    end

    if array.index(buy) > array.index(sell)
      # If index of low price greater than high price, set second lowest to buy variable
      buy = array.min(2).last
      # Assign buy/sell into an array labeled 'profit'
      profit = array.index(buy),array.index(sell)
      p profit
    else
      profit = array.index(buy),array.index(sell)
      p profit
    end
end

stock_picker([17,3,6,9,15,8,6,1,10])