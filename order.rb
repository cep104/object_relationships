#-keeps track of all instances 
#-save 
#-instantiate with properties of drink size and total (create object with those properties)
class Order 
    @@all = []
attr_accessor :drink, :size, :total, :customer, :barista

    def initialize(drink, size, total)
        @drink = drink 
        @size = size 
        @total = total
        save
    end

    def save 
        @@all << self 
    end

    def self.all 
        @@all
    end
end

