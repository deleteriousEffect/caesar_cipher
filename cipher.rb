def caesar_cipher(message, shift)
  characters = message.split(//)
  encoded_message = []

  characters.each do |char|
    shifted_char = char.ord + shift
    encoded_message << shifted_char.chr
  end
  encoded_message.join
end

puts caesar_cipher('bat', 1)
puts caesar_cipher('bat', -1)
