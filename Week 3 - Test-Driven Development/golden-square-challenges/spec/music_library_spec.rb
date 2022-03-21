require 'music_library'

RSpec.describe MusicLibrary do
  it "stores tracks" do
    library = MusicLibrary.new
    track1 = double :track
    library.add(track1)
    expect(library.all).to eq [track1]
  end

  it "searches for keywords in tracks" do
    library = MusicLibrary.new
    track1 = double :track, matches?: true
    track2 = double :track, matches?: false
    library.add(track1)
    library.add(track2)
    expect(library.search("two")).to eq [track1]
  end

end

