class CLI
    def intro 
        puts "Welcome to Starbucks, what is your name?"
        input = gets.strip
        customer = Customer.new(input)
        greeting(customer)
    end

    def greeting(customer) 
        puts "Cool, nice to meet you #{customer.name}. What would you like to order?"
        input = gets.strip.split(", ")
        make_order(input, customer)
    end

    def make_order(input, customer)
        new_order = Order.new(input[0], input[1], input[2])
        new_order.customer = customer
        new_order.barista = Barista.new("Jamie")
        # binding.pry
        print_order(new_order)
    end

    def print_order(order)
        puts "here is your order #{order.customer.name}"
        puts "~~~~~~~~~~~~~~~~~~~~~"
        puts "Drink: #{order.drink}"
        puts "Size: #{order.size}"
        puts "Total: #{order.total}"
        puts "~~~~~~~~~~~~~~~~~~~~~"
        puts "prepared by #{order.barista.name}"
    end
end