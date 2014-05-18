def stock_picker(prices)
	# Find the greatest upward difference between an item in the 'prices' array
	# and an item which comes after it
	biggest_profit = [ ]
	profit = 0
	counter = (0..(prices.size - 1)).to_a

	counter.each do |i|
		counter.each do |j|
			if j > i
				if (prices[j] - prices[i]) > profit
					profit = prices[j] - prices[i]
					biggest_profit = [i,j]
				end
			end
		end
	end
	p prices
	p biggest_profit
end

stock_picker([17,3,6,9,15,8,6,1,10])