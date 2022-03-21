def task_checker(text)
  text.include?("@TODO") ? true : false
end