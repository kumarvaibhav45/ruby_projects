def stock_picker(arr)
  max_profit = -1.0/0 # -Infinity
  buy_day = 0
  sell_day = 0
  index = 0
  while index < arr.length - 1
    sell_index = index + 1
    while sell_index < arr.length
      profit = arr[sell_index] - arr[index]
      if profit > max_profit
        max_profit = profit
        buy_day = index
        sell_day = sell_index
      end
      sell_index += 1
    end
    index += 1
  end
  [buy_day, sell_day]
end

p stock_picker([10, 12, 10, 2, 4, 16, 11, 8, 34])