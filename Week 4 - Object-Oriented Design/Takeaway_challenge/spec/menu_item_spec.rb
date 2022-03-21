require 'menu_item'

RSpec.describe MenuItem do
  it "creates a menu item and returns the price" do
    item = MenuItem.new("Cheesburger", "4.00")    
    expect(item.name).to eq "Egg Fried Rice"
  end

end