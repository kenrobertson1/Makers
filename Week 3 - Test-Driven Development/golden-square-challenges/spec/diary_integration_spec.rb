require 'diary'

RSpec.describe "Diary Integration" do
  it "returns a list of diary entries" do
    my_diary = Diary.new
    expect(my_diary.all).to eq []
  end

  it "adds diary entries" do
    my_diary = Diary.new
    today = DiaryEntry.new("today", "I went to the gym")
    my_diary.add(today)
    expect(my_diary.all).to eq [["today", "I went to the gym"]]
  end

  it "returns the nuber of words in all diary entries" do
    my_diary = Diary.new
    today = DiaryEntry.new("today", "I went to the gym")
    yesterday = DiaryEntry.new("yesterday", "I went shopping")
    my_diary.add(yesterday)
    my_diary.add(today)
    expect(my_diary.count_words).to eq 8
  end

  it "returns the reading time for all diary entries" do
    my_diary = Diary.new
    today = DiaryEntry.new("today", "I went to the gym")
    yesterday = DiaryEntry.new("yesterday", "I went shopping")
    my_diary.add(yesterday)
    my_diary.add(today)
    expect(my_diary.reading_time(2)).to eq 4
  end

  it "returns the longest diary entry that is readable for the user in given time" do
    my_diary = Diary.new
    today = DiaryEntry.new("today", "I went to the gym")
    yesterday = DiaryEntry.new("yesterday", "I went shopping")
    my_diary.add(yesterday)
    my_diary.add(today)
    expect(my_diary.find_best_entry_for_reading_time(2, 2)).to eq ["yesterday", "I went shopping"]
  end

end