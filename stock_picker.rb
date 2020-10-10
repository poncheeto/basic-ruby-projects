# frozen_string_literal: true

def stock_picker(array)
  sell = if array.first == array.max # If highest price first, set second highest to sell variable
           array.max(2).last
         else
           array.max
         end

  buy = if array.last == array.min # If lowest price last, set second lowest to buy variable
          array.min(2).last
        else
          array.min
        end

  return unless array.index(buy) > array.index(sell)

  buy = array.min(2).last
  profit = array.index(buy), array.index(sell)
  p profit
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
