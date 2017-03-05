#One user can enter a word

def word(word)
  word_array = word.chars
  p word_array
  length = word.length
  blanks = []

  word_array.each do |word|
     blanks << "_ "
  end
  puts blanks.join
end

#another user attempts to guess the word.
puts "Guess a letter a-z!"
guess = gets.chomp
valid_input = false

index_word = word_array(guess)

guess_num = 0
guess_list=[]
index_guess = guess_list(guess)

until guess_num == length
  if index_word != nil
    puts "Good guess! #{guess} is in the word!"
    blanks[index_word] = guess
    p blanks

  elsif index_word == nil
    puts "Good try!"

    if index_guess != nil
    puts "You already guessed that!"
    guess =- 1
    end

  end
  guess_list[guess_num] = guess
  guess_num =+ 1
end


#Guesses are limited, and the number of guesses available is related to the length
#of the word.

=begin
guess_list=[]
guess_num = 0
until guess_num == length

  guess_list[guess_num] = guess
  guess_num += 1
end
=end

#Repeated guesses do not count against the user.

guess == guess_list[]

#The guessing player receives continual feedback on the current state of the word.
#So if the secret word is "unicorn", the user will start out seeing something like
#{}"_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess
#of "c".

#The user should get a congratulatory message if they win, and a taunting message
#if they lose.

  if
    puts "Good Job! You Win!"
  else
    puts "Not sorry to rub it in.. You Lose!"
  end
