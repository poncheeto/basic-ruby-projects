# frozen_string_literal: true

def stock_picker(array)
  return unless array.index(buy(array)) > array.index(sell(array)) # Check if buy index greater than sell index

  buy = array.min(2).last
  profit = array.index(buy), array.index(sell(array))
  p profit
end

def sell(array)
  if array.first == array.max # Check if max is first element
    array.max(2).last
  else
    array.max
  end
end

def buy(array)
  if array.last == array.min # Check if min is last element
    array.min(2).last
  else
    array.min
  end
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1, 4]
stock_picker([3, 10, 11, 12, 8, 7, 20, 1, 5])
# => [0, 6]
