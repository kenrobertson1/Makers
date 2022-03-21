# Takeaway Class Design Recipe

## 1. Describe the Problem

> As a customer
> So that I can check if I want to order something
> I would like to see a list of dishes with prices.

> As a customer
> So that I can order the meal I want
> I would like to be able to select some number of several available dishes.

> As a customer
> So that I can verify that my order is correct
> I would like to see an itemised receipt with a grand total.

> (TWILIO)
> As a customer
> So that I am reassured that my order will be delivered on time
> I would like to receive a text such as "Thank you! Your order was placed and will be > delivered before 18:52" after I have ordered.

## 2. Design the Class System

```ruby
class TakeawayMenu
  def initialize
    @menu = []
  end
  def add
  end
  def list
  end
end

class item(name, price)
  def initialize
  end
  def name
  end
  def price
  end
end

class Order
  def select_dish
  end
  def order
  end
end

class Delivery
  def message
  end
end
```

## 3. Create examples as Integration Tests

```ruby
#=> 1. return the price of a menu item
  item1 = item.new("Egg Fried Rice", "3.00")
  expect(item1.price.to eq "3.00"

#=> 2. add items to menu and returns list
  menu = TakeawayMenu.new
  item1 = item.new("Egg Fried Rice", "3.00")
  item2 = item.new("Crispy Peking Duck", "8.00")
  item3 = item.new("Char Siu Pork", "5.50")
  menu.add(item1)
  menu.add(item2)
  menu.add(item3)
  expect(menu.list).to eq [["Egg Fried Rice", "3.00"], ["Crispy Peking Duck", "8.00"], ["Char Siu Pork", "5.50"]]

#=> 3. takes a user order and returns itemised list and total

#=> 4. returns message if item is not on the menu

#=> 5. sends message confirming order and delivery

```

## 4. Create examples as Unit Tests

## 5. Implement the behavior