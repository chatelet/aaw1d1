def stock_pick(arr)
  start_day = 0
  end_day = 0
  max_profit = 0
  arr.each_with_index do |start, i|
    (i...arr.length).each do |j|
      if arr[j] - start > max_profit
        start_day = i
        end_day = j
        max_profit = arr[j] - start
      end
    end
  end
  [start_day, end_day]
end
