class Diary
  def initialize
    @diary_entries = []
    @word_count = 0
    @list = []
  end

  def add(entry) 
    @diary_entries << entry
    @word_count += entry.count_words
  end

  def all
    @diary_entries.each {|entry| @list.push([entry.title, entry.contents])}
    @list
  end

  def count_words
    @word_count
  end

  def reading_time(wpm)
    @word_count / wpm
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    reading_time = wpm * minutes
    longest = 0
    final = nil
    @diary_entries.each do |entry|
      if entry.count_words > reading_time 
        next
      else
        if entry.count_words > longest
          longest = entry.count_words
          final = entry
        end
      end
      end
    return [final.title, final.contents]
  end
end

class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @counter = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm) 
    (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes) 
    words = wpm * minutes
    chunk = @contents.split(" ").slice(@counter, words).join(" ")
    @counter += words
    if @counter > count_words
      @counter = 0
    end
    return chunk
  end
end
