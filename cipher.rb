MINIMUM_CHAR_INT_VALUE = 65
MAXIMUM_CHAR_INT_VALUE = 122
NUM_LETTERS_IN_ALPHABET = 26

def caesar_cipher(message, shift)
  characters = message.split(//)
  encoded_message = []

  characters.each do |char|
    shifted_char = char.ord + shift
    if shifted_char < MINIMUM_CHAR_INT_VALUE
      shifted_char += NUM_LETTERS_IN_ALPHABET
    end

    if shifted_char > MAXIMUM_CHAR_INT_VALUE
      shifted_char -= NUM_LETTERS_IN_ALPHABET
    end

    encoded_message << shifted_char.chr
  end
  encoded_message.join
end

puts caesar_cipher('bat', 1)
puts caesar_cipher('bat', -1)
puts caesar_cipher('baz', 1)
