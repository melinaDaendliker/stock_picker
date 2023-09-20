def stock_picker(stock_prices)
  win = 0
  days_count = 0
  days = []
  until stock_prices.length == 0 do
      for i in 1...stock_prices.length do
          result = stock_prices[i] - stock_prices[0]
          if result > win
              win = result
              days = [days_count, i + days_count]
          end
      end
      days_count += 1
      stock_prices = stock_prices.drop(1)
  end 
  days
end 

p stock_picker([1,3,6,9,15,18,6,1,20,5])
