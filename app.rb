def stock_picker(days)
  best_days = { buy: { value: 0, index: 0 }, sell: { value: 0, index: 0 }, profit: 0 }
  days.each_index do |curr_day|
    curr_day.upto(days.length - 1) do |next_day|
      curr_profit = days[next_day] - days[curr_day]
      if curr_profit > best_days[:profit]
        best_days = {
          buy: { value: days[curr_day], index: curr_day },
          sell: { value: days[next_day], index: next_day },
          profit: curr_profit
        }
      end
    end
  end
  [best_days[:buy][:index], best_days[:sell][:index]]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # => [1, 4]
p stock_picker([10, 7, 5, 8, 11, 9, 1])  # => [2, 4]
p stock_picker([3, 8, 8, 55, 38, 1, 58])  # => [5, 6]
p stock_picker([1, 2, 3, 4, 5, 6, 7, 8, 9])  # => [0, 8]
p stock_picker([4, 3, 2, 5, 11, 1, 8, 9])  # => [2, 4]
p stock_picker([5, 6, 2, 8, 4, 9, 1, 7])  # => [2, 5]
p stock_picker([1, 4, 3, 2, 6, 5, 7, 8])  # => [0, 7]
p stock_picker([8, 6, 5, 4, 2, 1, 10, 9])  # => [5, 6]
