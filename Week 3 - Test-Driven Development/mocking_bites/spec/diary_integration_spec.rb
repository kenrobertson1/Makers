require 'secret_diary'
require 'diary'

RSpec.describe "Diary Integration" do
  it "initially does not allow user to read" do
    my_diary = Diary.new("I went to the gym")
    my_secret_diary = SecretDiary.new(my_diary)
    expect { my_secret_diary.read }.to raise_error "Go away!"
  end

  it "unlocks the diary" do
    my_diary = Diary.new("I went to the gym")
    my_secret_diary = SecretDiary.new(my_diary)
    my_secret_diary.unlock
    expect(my_secret_diary.read).to eq "I went to the gym"
  end

  it "locks the diary" do 
    my_diary = Diary.new("I went to the gym")
    my_secret_diary = SecretDiary.new(my_diary)
    my_secret_diary.unlock
    my_secret_diary.lock
    expect { my_secret_diary.read }.to raise_error "Go away!"
  end

end