require 'secret_diary'

RSpec.describe SecretDiary do
  # it "sets up a secret diary" do
  #   my_diary = double :diary, contents: nil
  #   expect(SecretDiary).to receive(:new).with(my_diary)
  # end

  it "initially doesn't allow user to read" do
    my_diary = double :diary, contents: "I went to the gym"
    my_secret_diary = SecretDiary.new(my_diary)
    expect { my_secret_diary.read }.to raise_error "Go away!"
  end

  it "unlocks the diary" do
    my_diary = double :diary, contents: "I went to the gym"
    my_secret_diary = SecretDiary.new(my_diary)
    my_secret_diary.unlock
    expect(my_diary).to receive(:read).and_return("I went to the gym")
    expect(my_secret_diary.read).to eq "I went to the gym"
  end

  it "locks the diary" do 
    my_diary = double :diary, contents: "I went to the gym"
    my_secret_diary = SecretDiary.new(my_diary)
    my_secret_diary.unlock
    my_secret_diary.lock
    expect { my_secret_diary.read }.to raise_error "Go away!"
  end

end