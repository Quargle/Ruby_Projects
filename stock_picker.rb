# Ruby stock_picker.rb

stocks = [17, 3, 8, 12, 4, 11]

max_gain = 0
for buy in (0...stocks.length) do 
    puts "#{buy}: #{stocks[buy]}"
    for sell in (buy...stocks.length) do
        gain = stocks[sell] - stocks[buy]
        if gain > max_gain
            buy_day = buy
            buy_price = stocks[buy]
            sell_day = sell
            sell_price = stocks[sell]
            max_gain = gain
        end
    end
end

puts "For maximum gain, you should buy on day #{buy_day+1}, at £#{buy_price}, and sell on day #{sell_day+1} at #{sell_price}.
This will net you a profit of £#{max_gain}."