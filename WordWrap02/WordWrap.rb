def wrap(str, max_len)
  result = ""
  while str.length > 0
    (result << str; break) if str.length <= max_len                         #return str and break if shorter than max length
    chunk = str[0..max_len-1][/.*\s+/] || str[0..max_len-1]                 #split on space(using regex) or on max length
    str.slice!(chunk)                                                       #remove chunk from the rest of the string
    result << chunk.strip + "\n"
  end
  result
end

#I think the first solution was a bit better in terms of complexity and readability
