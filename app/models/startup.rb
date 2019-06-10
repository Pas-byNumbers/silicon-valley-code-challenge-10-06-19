class Startup

    attr_accessor(:name)
    attr_reader(:founder, :domain)
    attr_writer()

    @@all = []

    def initialize(name:, founder:, domain:)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    

#     Startup#name
# returns a string that is the startup's name
# Startup#founder
# returns a string that is the founder's name
# Once a startup is created, the founder cannot be changed.
# Startup#domain
# returns a string that is the startup's domain
# Once a startup is created, the domain cannot be changed.
# Startup#pivot
# given a string of a domain and a string of a name, change the domain and name of the startup
def pivot(domain: ,name: )
    @domain = domain
    @name = name
end
# Startup.all
# should return all of the startup instances
# Startup.find_by_founder
# given a string of a founder's name, returns the first startup whose founder's name matches
    def self.find_by_founder(founder_name)
        @@all.find {|startup| startup.founder == founder_name}

    end
# Startup.domains
# should return an array of all of the different startup domains
    def self.domains
        @@all.map {|startup| startup.domain}
    end

#     Startup#sign_contract
# given a venture capitalist object, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
    def sign_contract(venture_capitalist: ,type: , investment:)

        new_fund = FundingRound.new(startup: self, venture_capitalist: venture_capitalist, type: type, investment: investment)
    end
# Startup#num_funding_rounds
# Returns the total number of funding rounds that the startup has gotten
    def num_funding_rounds
        FundingRound.all.select {|funding| funding.startup == self }.count
    end
# Startup#total_funds
# Returns the total sum of investments that the startup has gotten
    def total_funds
        total = nil
        FundingRound.all.each do |funding|
             funding.startup == self
                total += funding.investment
            end
        end
        return total
    end
# Startup#investors
# Returns a unique array of all the venture capitalists that have invested in this company
# Startup#big_investors
# Returns a unique array of all the venture capitalists that have invested in this company and are in the Trés Commas club

end
