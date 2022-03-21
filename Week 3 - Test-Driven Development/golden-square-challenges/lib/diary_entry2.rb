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
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end