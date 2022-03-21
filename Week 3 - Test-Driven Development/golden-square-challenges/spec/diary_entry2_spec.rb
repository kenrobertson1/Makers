require 'diary_entry2'

RSpec.describe DiaryEntry do
  it "it takes a diary entry and returns the title" do
    diaryentry = DiaryEntry.new("today", "I went for a walk")
    expect(diaryentry.title).to eq "today"
  end

  it "it takes a diary entry and returns the contents" do
    diaryentry = DiaryEntry.new("today", "I went for a walk")
    expect(diaryentry.contents).to eq "I went for a walk"
  end

  it "Returns the number of words in the diary entry" do
    diaryentry = DiaryEntry.new("today", "I went for a walk")
    expect(diaryentry.count_words).to eq 5
  end

  it "Returns the estimated reading time in minutes" do
    diaryentry = DiaryEntry.new("today", "I went for a walk" * 20)
    expect(diaryentry.reading_time(60)).to eq 2
  end

  it "Returns a string of contents that the user could read in a given number of minutes" do
    diaryentry = DiaryEntry.new("today", "I went for a walk, it was sunny and the birds were chirping")
    expect(diaryentry.reading_chunk(60, 1)).to eq "I went for a walk, it was sunny and the birds were chirping"
  end

  it "returns the next chunk of text when called again" do
    diaryentry = DiaryEntry.new("today", "I went for a walk, it was sunny and the birds were chirping")
    diaryentry.reading_chunk(2, 1)
    expect(diaryentry.reading_chunk(2, 1)).to eq "for a"
  end

  it "starts from the beginning once the contents have been read" do
    diaryentry = DiaryEntry.new("today", "I went for a walk, it was sunny and the birds were chirping")
    diaryentry.reading_chunk(2, 5)
    diaryentry.reading_chunk(2, 5)
    expect(diaryentry.reading_chunk(2, 1)).to eq "I went"
  end
end