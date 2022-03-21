require 'diary'

RSpec.describe DiaryEntry do
  it "Adds a diary entry" do
    today = DiaryEntry.new("today", "I went to the gym")
  end

  it "Displays title" do
    today = DiaryEntry.new("today", "I went to the gym")
    expect(today.title).to eq "today"
  end

  it "Displays contents" do
    today = DiaryEntry.new("today", "I went to the gym")
    expect(today.contents).to eq "I went to the gym"
  end

  it "returns the number of words in contents" do
    today = DiaryEntry.new("today", "I went to the gym")
    expect(today.count_words).to eq 5
  end

  it "Returns the estimated reading time in minutes" do
    today = DiaryEntry.new("today", "I went for a walk" * 20)
    expect(today.reading_time(60)).to eq 2
  end

  it "Returns a string of contents that the user could read in a given number of minutes" do
    today = DiaryEntry.new("today", "I went for a walk, it was sunny and the birds were chirping")
    expect(today.reading_chunk(60, 1)).to eq "I went for a walk, it was sunny and the birds were chirping"
  end

  it "returns the next chunk of text when called again" do
    today = DiaryEntry.new("today", "I went for a walk, it was sunny and the birds were chirping")
    today.reading_chunk(2, 1)
    expect(today.reading_chunk(2, 1)).to eq "for a"
  end

  it "starts from the beginning once the contents have been read" do
    today = DiaryEntry.new("today", "I went for a walk, it was sunny and the birds were chirping")
    today.reading_chunk(2, 5)
    today.reading_chunk(2, 5)
    expect(today.reading_chunk(2, 1)).to eq "I went"
  end

end