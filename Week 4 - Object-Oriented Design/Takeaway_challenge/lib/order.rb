require './lib/takeaway_menu.rb'
require './lib/menu_item.rb'

class Order 
  def initialize(menu, terminal)
    @menu = menu
    @order = {}
    @price = 0
    @terminal = terminal
  end

  def select_dish
    @terminal.puts @menu.list
    @terminal.puts "Please enter the number of the item you'd like to order:"
    selection = @terminal.gets.chomp.to_i
    fail "Please type the number of the dish you would like to order" unless selection > 0
    return "Sorry, that is not a valid selection" if selection > @menu.list.length
    item = @menu.menu[selection.to_i - 1]
    @terminal.puts "How many would you like?"
    quantity = @terminal.gets.chomp.to_i
    if @order.has_key?(item.name)
      @order[item.name] += quantity
    else
      @order[item.name] = quantity
    end
    @price += item.price.to_i * quantity
  end

  def view_order
    view = []
    @order.each {|name, quantity| view << "#{quantity} x #{name}"}
    view << "£#{'%.2f' % @price}"
    @terminal.puts "Here's your order:"
    @terminal.puts view
  end

  def delivery
    
  end
  
end

menu = TakeawayMenu.new
item1 = MenuItem.new("Cheeseburger", "4.00")
item2 = MenuItem.new("Chips", "2.00")
menu.add(item1)
menu.add(item2)
order = Order.new(menu, Kernel)
order.select_dish
order.view_order