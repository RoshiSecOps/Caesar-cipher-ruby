#Create a variable for the alphabet array
alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

#Create a function to make sure we don't go over our max position value
def cipher_position(position)
  max_position = 26
  if position > 26 
    position = position - max_position
  else
    position = position
  end
end

def caesar_cipher(cipherstring, position)
  position = position.to_i
  cipherstring = cipherstring.split("")
  puts "Move our string #{cipherstring} - #{position} times"
#We need to iterate over the string array, match the character to the indext at alphabet
# and make the shift plus push to a different output.
end

caesar_cipher("whatafak", 5)