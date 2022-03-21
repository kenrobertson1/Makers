class TakeawayMenu
  def initialize
    @menu = []
  end

  def add(item)
    @menu << item
  end

  def menu
    @menu
  end

  def list
    list = []
      @menu.each_with_index {|item, index| list << "#{index + 1}. #{item.name}: £#{item.price}"}
    list
  end
end