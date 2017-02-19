#Encryting password, change each letter to the following letter in the alphabet
def encrypt(str)
      count = 0
      while count < str.length
           if str[count] == "z"
              str[count] = "a"
            else str[count] = str[count].next!
          end
            count += 1
      end
      return str
  end

#Decryting password, change each letter to the previous letter in the alphabet
  def decrypt(str)
      alphabet = "abcdefghijklmnopqrstuvwxyz"
      count = 0
      while count < str.length
          letter = str[count]
          index = alphabet.index(letter)
          new_index = index - 1
          new_letter = alphabet[new_index]
          str[count] = new_letter
          count += 1
      end
      return str
  end

# OUR DRIVER CODE
# Asks user if they want to encrypt or decrypt a message
# If they answer neither, we ask again until the give us "encyrpt" or "decrypt"

valid_info = false

until valid_info
puts "Would you like to encrypt or decrypt a password?"
desire = gets.chomp
  if desire == "encrypt"
    puts "Please enter your password"
    str = gets.chomp
    valid_info = true
    puts encrypt(str)
  elsif desire == "decrypt"
    puts "Please enter your password"
    str = gets.chomp
    valid_info = true
    puts decrypt(str)
  else
  end
end

#Nested method call
#decrypt(encrypt("swordfish"))
#this nested message call works because our program first evaluates our encrypt method call on the string "swordfish," and then runs our decrypt method on the result and this gives us back the original string "swordfish."
