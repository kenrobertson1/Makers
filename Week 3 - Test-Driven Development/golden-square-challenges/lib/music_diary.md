# MusicDiary Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them.

## 2. Design the Method Signature

```ruby
class MusicDiary
  def initialize
    @tracks = [] #=> initializes a blank list of tasks
  end

  def add_track(track)
    @tracks << track #=> adds users inputted tracks
  end

  def list
    @tracks #=> Outputs list for user to see
  end
end


```

## Create examples as tests

```ruby
# 1. Creates blank track list
music = MusicDiary.new
music.list #=> []

# 2. Adds tracks to list
music = MusicDiary.new
music.add("Old Mcdonald")
music.list #=> ["Old Mcdonald"]

# 3. Doesn't accept duplicates
music = MusicDiary.new
music.add("Old Mcdonald")
music.add("Old Mcdonald") #=> "Track already in list"



```