def make_snippet(str)
  words = str.split(" ")
  if words.length > 5
    final = words.slice(0, 5)
    final << "..."
    return final.join(" ")
  else
    return str
  end
end