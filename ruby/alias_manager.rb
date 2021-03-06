#Creates Spy names for all the secret agents the user enters and then prints them out.

puts "Press ENTER to start creating spy names!  Or type 'quit' to exit."
user_input = gets.chomp
secret_agents = {}

until user_input == "quit"

#Takes a spy's real name and creates a fake name.

  puts "First Name: "
  first_name = gets.chomp

  puts "Last Name:"
  last_name = gets.chomp

  spy = "#{first_name}" + " #{last_name}"

  #Swap the first and last name
  spy_new = "#{last_name}" + " #{first_name}"

    def convert(str)
      vowels = "aeioua"
      consonants = "bcdfghjklmnpqrstvwxyzb"
      cap_vowels = "AEIOUA"
      cap_consonants = "BCDFGHJKLMNPQRSTVWXYZB"

      count = 0
      while count < str.length
          char = str[count]
          v_index = vowels.index(char)
          c_index = consonants.index(char)
          cap_v_index = cap_vowels.index(char)
          cap_c_index = cap_consonants.index(char)

          #Change the vowels (a, e, i, o, or u) to the next vowel in 'aeiou.'
          if v_index != nil
            new_index = v_index + 1
            new_char = vowels[new_index]
            str[count] = new_char

          #Change the consonants to the next consonant in the alphabet.
          elsif c_index != nil
            new_index = c_index.next
            new_char = consonants[new_index]
            str[count] = new_char

          #Keep first letters capitalized and still convert accordingly
          #Convert Capital Vowel
          elsif cap_v_index != nil
            new_index = cap_v_index.next
            new_char = cap_vowels[new_index]
            str[count] = new_char

          #Convert Capital Consonant
          elsif cap_c_index != nil
            new_index = cap_c_index.next
            new_char = cap_consonants[new_index]
            str[count] = new_char

          end
          count += 1
        end
        return str
      end

      converted_name = convert(spy_new)
      puts "Your Secret Agent name: #{converted_name}."

      secret_agents[spy] = converted_name

      puts "Would you like to encrypt another name? Press ENTER, else type 'quit' to exit."
      user_input = gets.chomp

    end

  puts "Thank you! Your spy names have been saved! Here they are:"

  secret_agents.each do |spy,converted_name|
    puts "#{spy} is also known as #{converted_name}."
end
