class MenuItem 
  def initialize(name, price)
    @name = name
    @price = price
  end

  def name
    @name
  end

  def price
    @price
  end
end

class Order 
  def initialize(menu)
    @menu = menu
    @order = []
    @price = 0
    # @io = io
  end

  
  def order
    # loop do
      select_dish
      # loop do
      #   puts "Would you like to add another item (Y/N)?"
      #   user_input = gets.chomp
      #   break if user_input == "N" || user_input == "Y"
      # end
    # end
    view_order
  end

  def select_dish
    puts @menu.list
    puts "Please enter the number of the item you'd like to order:"
    selection = gets.chomp
    @order << @menu
  end

  def view_order
    @order
  end
end

class TakeawayMenu
  def initialize
    @menu = []
  end

  def add(item)
    @menu << item
  end


  def list
    list = []
      @menu.each_with_index {|item, index| list << "#{index + 1}. #{item.name}: #{item.price}"}
    puts list
  end
end


menu = TakeawayMenu.new
item1 = MenuItem.new("Egg Fried Rice", "3.00")
item2 = MenuItem.new("Crispy Peking Duck", "8.00")
item3 = MenuItem.new("Char Siu Pork", "5.50")
menu.add(item1)
menu.add(item2)
menu.add(item3)
order = Order.new(menu)
order.order

