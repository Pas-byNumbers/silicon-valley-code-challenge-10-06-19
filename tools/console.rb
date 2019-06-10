require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

start1 = Startup.new(name: "Jack-in-a-box", founder: "Robert Owen", domain: "www.jiab.com")
start2 = Startup.new(name: "Lakeside Clothes", founder: "Patricia Power", domain: "www.lakeside.com")
start3 = Startup.new(name: "Boris Johnson Jokes", founder: "Boris Johnson", domain: "www.bjjftw.com")
start4 = Startup.new(name: "Not my Denim", founder: "Billie Jean", domain: "www.notdenim.com")
start5 = Startup.new(name: "Guns and Moses", founder: "The Pope", domain: "www.ghettochurch.com")
vent1 =  VentureCapitalist.new(name: "Bruce Wayne", total_worth: 29000000)
vent2 =  VentureCapitalist.new(name: "Oliver Queen", total_worth: 450000)
vent3 =  VentureCapitalist.new(name: "Susan Boyle", total_worth: 35000000)
vent4 =  VentureCapitalist.new(name: "Matt Bellamy", total_worth: 75000000)
vent5 =  VentureCapitalist.new(name: "Hermione Granger", total_worth: 5000000)
fund1 = FundingRound.new(startup: start1, venture_capitalist: vent1, type: "Angel", investment: 56000.00)
fund2 = FundingRound.new(startup: start3, venture_capitalist: vent3, type: "Series B", investment: 28000.00)
fund3 = FundingRound.new(startup: start1, venture_capitalist: vent2, type: "Series A", investment: 900000.00)
fund4 = FundingRound.new(startup: start4, venture_capitalist: vent5, type: "Pre-Seed", investment: 2400.00)
fund5 = FundingRound.new(startup: start5, venture_capitalist: vent4, type: "Seed", investment: 403000.00)
fund6 = FundingRound.new(startup: start2, venture_capitalist: vent2, type: "Series C", investment: 246000.00)
fund7 = FundingRound.new(startup: start4, venture_capitalist: vent3, type: "Seed", investment: 75000.00)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line