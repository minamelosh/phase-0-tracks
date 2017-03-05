#module Game
  #attr_reader :word
  #attr_accessor :word_array, :blanks

  #def word(word)
  puts "Please enter a word:"
  word = gets.chomp
  puts

    word_array = word.chars
    #p word_array
    length = word.length
    blanks = []

    word_array.each do |word|
       blanks << "_ "
    end
    #puts blanks.join
  #end
  #word("hello")

  puts blanks.join
  puts "Look at the blanks above that represent a word."
  puts "Guess a letter a-z!"
  guess = gets.chomp

  index_word = word_array.index(guess)

  guess_num = 0
  guess_list = []
  index_guess = guess_list.index(guess)


  until guess_num == length
  valid_input = false

   # until valid_input = true
      if index_word != nil
        puts "Good guess! #{guess} is in the word!"
        blanks[index_word] = guess
        p blanks
        #valid_input = true

      elsif index_word == nil
        if index_guess != nil
          puts "You already guessed that!"
          guess -= 1
        elsif index_guess == nil
          puts "Good Try!"

        #valid_input = true

        end

      #valid_input = true
      guess_list.push(guess)
      end
      guess_num += 1
      puts "You have used #{guess_num} out of #{length} guesses!"
    #end
  end
#end

#Driver Code
#word("hello")
