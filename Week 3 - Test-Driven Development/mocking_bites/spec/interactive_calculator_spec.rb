require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
  it "subtracts to given numbers" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("5").ordered
    expect(terminal).to receive(:puts).with("Please enter another number").ordered
    expect(terminal).to receive(:gets).and_return("3").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("5 - 3 = 2").ordered
    calc = InteractiveCalculator.new(terminal)
    calc.run
  end
end