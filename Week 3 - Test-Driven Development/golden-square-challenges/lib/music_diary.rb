class MusicDiary
  def initialize
    @tracks = []
  end

  def list
    @tracks
  end

  def add(track)
    @tracks << track unless @tracks.include?(track)
    "Track already in list"
  end
end