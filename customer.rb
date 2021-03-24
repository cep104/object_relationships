class Customer 
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
            order.customer == self
        end
    end

    def baristas 
        orders.map do |order|
        order.barista
        end
    end

end