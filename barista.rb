class Barista 
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def save 
        @@all << self 
    end

    def self.all 
        @@all
    end

    def orders 
        Order.all.select do |order| 
            order.barista == self
        end
    end

    def customers
        orders.map do |order|
        order.customer
        end
    end

end