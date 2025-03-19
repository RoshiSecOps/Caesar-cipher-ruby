#Create a function to make sure we don't go over our max position value
def cipher_position(position)
  max_position = 26
  if position > 26 
    position = (position - max_position) - 1
  else
    position = position - 1
  end
end

def caesar_cipher(cipherstring, position)
#Create a variable for the alphabet array
  alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
  
#Array to keep the positions of the characters
  position_array = Array.new()

#Array to keep the ciphered string
  ciphered_string_array = Array.new()

# Make sure position is always an integer
  position = position.to_i

# Split the provided string to check character positions
  cipherstring = cipherstring.downcase.split("")
  cipherstring.each do |char|
    if alphabet.include?("#{char}")
      position_array.push(alphabet.index("#{char}").to_i)
    else
      position_array.push(char)
    end
  end
  position_array.each do |char|
    if char.is_a?(Integer)
      ciphered_string_array.push(alphabet[cipher_position(char + position)])
    else
      ciphered_string_array.push(char)
    end
  end
  p ciphered_string_array.join("")
end

caesar_cipher("wHata fak!", 5)