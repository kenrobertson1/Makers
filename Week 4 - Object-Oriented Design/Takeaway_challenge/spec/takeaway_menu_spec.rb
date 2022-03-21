require 'takeaway_menu'

RSpec.describe TakeawayMenu do
  it "adds item instances to menu" do
    menu = TakeawayMenu.new
    item1 = double :MenuItem, name: "Cheeseburger", price: "4.00"
    item2 = double :MenuItem, name: "Chips", price: "2.00"
    menu.add(item1)
    menu.add(item2)
    expect(menu.list).to eq ["1. Cheeserburger: £4.00", "2. Chips: £2.00"]
  end

  # it "only accepts instances of MenuItem" do
  #   menu = TakeawayMenu.new
  #   item1 = "Milkshake"
  #   expect {menu.add(item1)}.to raise_error "This is not a menu item"
  # end

end