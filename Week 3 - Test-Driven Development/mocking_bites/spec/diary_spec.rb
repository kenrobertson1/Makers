require 'diary'

RSpec.describe Diary do
  it "takes a diary entry" do
    my_diary = Diary.new("I went to the gym")
    expect(my_diary).to be 
  end

  it "reads contents from the diary" do
    my_diary = Diary.new("I went to the gym")
    expect(my_diary.read).to eq "I went to the gym"
  end
  
end


