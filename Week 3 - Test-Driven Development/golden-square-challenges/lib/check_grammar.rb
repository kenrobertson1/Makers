def check_grammar(text)
  fail "Not a sentence!" if text.empty?
  first_letter = text[0] == text [0].upcase
  last_char = text[-1] == "." || text[-1] == "?" || text[-1] == "!"
  if first_letter && last_char
    return true
  else 
    return false
  end 
end