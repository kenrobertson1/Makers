require 'takeaway_menu'
require 'menu_item'
require 'order'
require 'delivery'

RSpec.describe "takeaway integration" do
  it "lets user view the menu" do
    menu = TakeawayMenu.new
    item1 = MenuItem.new("Cheeseburger", "4.00")
    menu.add(item1)
    expect(menu.list).to eq ["1. Cheeseburger: £4.00"]
  end

  it "allows user to select menu items" do
    terminal = double :terminal
    menu = TakeawayMenu.new
    item1 = MenuItem.new("Cheeseburger", "4.00")
    item2 = MenuItem.new("Chips", "2.00")
    item3 = MenuItem.new("Milkshake", "3.50")
    menu.add(item1)
    menu.add(item2)
    menu.add(item3)
    expect(terminal).to receive(:puts).with(menu.list).ordered
    expect(terminal).to receive(:puts).with("Please enter the number of the item you'd like to order:").ordered
    expect(terminal).to receive(:gets).and_return("1").ordered
    expect(terminal).to receive(:puts).with("How many would you like?").ordered
    expect(terminal).to receive(:gets).and_return("2").ordered
    order = Order.new(menu, terminal)
    order.select_dish
    expect(terminal).to receive(:puts).with("Here's your order:").ordered
    expect(terminal).to receive(:puts).with(["2 x Cheeseburger", "£8.00"])
    expect(order.view_order).to eq nil
  end

  it "merges duplicate requests on order" do
    terminal = double :terminal
    menu = TakeawayMenu.new
    item1 = MenuItem.new("Cheeseburger", "4.00")
    item2 = MenuItem.new("Chips", "2.00")
    menu.add(item1)
    menu.add(item2)
    expect(terminal).to receive(:puts).with(menu.list)
    expect(terminal).to receive(:puts).with("Please enter the number of the item you'd like to order:")
    expect(terminal).to receive(:gets).and_return("1")
    expect(terminal).to receive(:puts).with("How many would you like?")
    expect(terminal).to receive(:gets).and_return("1")
    order = Order.new(menu, terminal)
    order.select_dish
    expect(terminal).to receive(:puts).with(menu.list)
    expect(terminal).to receive(:puts).with("Please enter the number of the item you'd like to order:")
    expect(terminal).to receive(:gets).and_return("1")
    expect(terminal).to receive(:puts).with("How many would you like?")
    expect(terminal).to receive(:gets).and_return("1")
    order.select_dish
    expect(terminal).to receive(:puts).with("Here's your order:")
    expect(terminal).to receive(:puts).with(["2 x Cheeseburger", "£8.00"])
    expect(order.view_order).to eq nil
  end

  it "calculates and returns total price of order" do
    terminal = double :terminal
    menu = TakeawayMenu.new
    item1 = MenuItem.new("Cheeseburger", "4.00")
    item2 = MenuItem.new("Chips", "2.00")
    menu.add(item1)
    menu.add(item2)
    expect(terminal).to receive(:puts).with(menu.list)
    expect(terminal).to receive(:puts).with("Please enter the number of the item you'd like to order:")
    expect(terminal).to receive(:gets).and_return("1")
    expect(terminal).to receive(:puts).with("How many would you like?")
    expect(terminal).to receive(:gets).and_return("2")
    order = Order.new(menu, terminal)
    order.select_dish
    expect(terminal).to receive(:puts).with(menu.list)
    expect(terminal).to receive(:puts).with("Please enter the number of the item you'd like to order:")
    expect(terminal).to receive(:gets).and_return("2")
    expect(terminal).to receive(:puts).with("How many would you like?")
    expect(terminal).to receive(:gets).and_return("1")
    order.select_dish
    expect(order.receipt).to eq 10.00
  end

  it "returns error message if item not on the menu" do
    terminal = double :terminal
    menu = TakeawayMenu.new
    expect(terminal).to receive(:puts).with(menu.list)
    expect(terminal).to receive(:puts).with("Please enter the number of the item you'd like to order:")
    expect(terminal).to receive(:gets).and_return("1")
    order = Order.new(menu, terminal)
    expect(order.select_dish).to eq "Sorry, that is not a valid selection"
  end

  it "fails unless an Integer is used" do
    terminal = double :terminal
    menu = TakeawayMenu.new
    expect(terminal).to receive(:puts).with(menu.list)
    expect(terminal).to receive(:puts).with("Please enter the number of the item you'd like to order:")
    expect(terminal).to receive(:gets).and_return("hey efnkjsnkfjsk")
    order = Order.new(menu, terminal)
    expect { order.select_dish }.to raise_error "Pleas3e type the number of the dish you would like to order"
  end
end


  # it "only accepts instances of MenuItem" do
  #   menu = TakeawayMenu.new
  #   item1 = "Milkshake"
  #   expect {menu.add(item1)}.to raise_error "This is not a menu item"
  # end