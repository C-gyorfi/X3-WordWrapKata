# The Word Wrap Kata:
# Design a _wrap_ function, which takes a string and a num for the max lenght of line
# - Return the string broken up by newlines, so that each lines is no longer than the max lenght.
# Prefer to break words on spaces.

def wrap(str, max_len)
  return str if str.length <= max_len
  indexOfSpace = str[0, max_len].rindex(" ")       #find the first space from the end
  part = indexOfSpace.nil? ? str[0, max_len] : str[0..indexOfSpace-1]   #split at max length OR at last space within max length
  part + "\n" + wrap(str[part.length..-1].strip, max_len)  # join first part by endline and split/join the rest
end
