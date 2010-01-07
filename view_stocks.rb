require "rubygems"
require "yahoofinance"

#PETR4.SA => Petrobras / Bovespa
#VALE5.SA => Vale / Bovespa
#AAPL => Apple Inc. / Nasdaq
#JAVA => Sun Microsystems / Nasdaq

quote_symbols = "petr4.sa,vale5.sa,aapl,java"
quote_type = YahooFinance::RealTimeQuote

YahooFinance::get_quotes( quote_type, quote_symbols ) do |quote|	
	puts "STOCK: #{quote.name} (#{quote.symbol})"
	puts "PRICE: #{quote.ask} (#{quote.change})"
	puts "-" * 50
end