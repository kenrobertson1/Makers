require 'music_library'
require 'track'

RSpec.describe "Music Library Integration" do
  it "stores tracks" do
    library = MusicLibrary.new
    track1 = Track.new("bla bla bla", "Ken")
    library.add(track1)
    expect(library.all).to eq [track1]
  end

  it "searches for keywords in tracks" do
    library = MusicLibrary.new
    track1 = Track.new("bla bla bla", "Ken")
    library.add(track1)
    expect(library.search("Ken")).to eq [track1]
  end

end