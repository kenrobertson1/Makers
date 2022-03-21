require 'music_diary'

RSpec.describe MusicDiary do
  it "creates an empty track list" do
    music = MusicDiary.new
    expect(music.list).to eq []
  end

  it "Adds tracks to list" do
    music = MusicDiary.new
    music.add("Old Mcdonald")
    expect(music.list).to eq ["Old Mcdonald"]
  end

  it "Doesn't accept duplicates" do
    music = MusicDiary.new
    music.add("Old Mcdonald")
    expect(music.add("Old Mcdonald")).to eq "Track already in list"
  end

end