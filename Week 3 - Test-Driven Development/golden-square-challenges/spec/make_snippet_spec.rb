# A method called make_snippet that takes a string as an argument 
# and returns the first five words and then a '...' if there are more than that.

require 'make_snippet'

RSpec.describe "outputs the first five words of a string" do
  it "returns the string if it is shorter than five words" do
    result = make_snippet("Nice weather today")
    expect(result).to eq "Nice weather today"
  end

  it "returns first five words of string and '...' if longer than five words" do
    result = make_snippet("The weather is really nice today")
    expect(result).to eq "The weather is really nice ..."
  end
end