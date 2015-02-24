NUM_LETTERS_IN_ALPHABET = 26

# Shifts a letter n number of spaces down the alphabet.
# Shift by a negetive number to reverse.
# Preserves case and wraps from z to a and vice versa.
def shift_char(char, shift)
  uppercase_letters = ('A'..'Z').to_a
  lowercase_letters = ('a'..'z').to_a

  # Find the corresponding index for the shifted character, if it's a letter.
  if char.match(/\w/)
    shifted_char_index = lowercase_letters.index(char.downcase) + shift
    if shifted_char_index > NUM_LETTERS_IN_ALPHABET - 1
      shifted_char_index -= NUM_LETTERS_IN_ALPHABET
    end
  end
  # Set shifted_char to a lowercase letter if the orginal was lowercase.
  if char.match(/[a-z]/)
    shifted_char = lowercase_letters[shifted_char_index]
  # Set shifted_char to an uppercase letter if the orginal was uppercase.
  elsif char.match(/[A-Z]/)
    shifted_char = uppercase_letters[shifted_char_index]
  # If the character is not a letter, do nothing.
  else
    shifted_char = char
  end
  shifted_char
end

# Takes a string and shifts each letter n amount.
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
