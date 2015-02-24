def shift_char(char, shift)
  uppercase_letters = ('A'..'Z').to_a
  lowercase_letters = ('a'..'z').to_a
  if char.match(/[a-z]/)
    shifted_char_index = lowercase_letters.index(char) + shift

    shifted_char = lowercase_letters[shifted_char_index]
  elsif char.match(/[A-Z]/)
    shifted_char_index = uppercase_letters.index(char) + shift

    shifted_char = uppercase_letters[shifted_char_index]
  end
  shifted_char
end

def caesar_cipher(message, shift)
  characters = message.split(//)
  encoded_message = []

  characters.each do |char|
    shifted_char = shift_char(char, shift)

    encoded_message << shifted_char
  end
  encoded_message.join
end

puts caesar_cipher('bat', 1)
puts shift_char('a', 1)
puts caesar_cipher('aaa', -1)
puts caesar_cipher('What a string!', 5)
