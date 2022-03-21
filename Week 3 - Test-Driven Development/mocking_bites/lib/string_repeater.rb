class StringRepeater
  def initialize(terminal)
    @terminal = terminal
  end
  def run
    @terminal.puts "Hello. I will repeat a string many times."
    @terminal.puts "Please enter a string"
    input = @terminal.gets.chomp
    @terminal.puts "Please enter a number of repeats"
    repeats = @terminal.gets.chomp
    @terminal.puts "Here is your result:"
    @terminal.puts "#{input}" * repeats.to_i
  end
end

# repeater = StringRepeater.new(Kernel)
# repeater.run
# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX