require 'count_words'

RSpec.describe "Method that returns the number of words in a string" do
  it "Gives 0 if string is empty" do
    result = count_words("")
    expect(result).to eq 0
  end

  it "Returns 3 if string length is 3" do
    result = count_words("Here's 3 words")
    expect(result).to eq 3
  end
end