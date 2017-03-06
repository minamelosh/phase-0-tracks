class Game
  attr_accessor :word, :word_array, :length, :blanks, :guess_num

  #Get a word from user one.
  def initialize(word)
    @word = word
    @word_array = @word.chars
    @length = @word.length
    @blanks = []
    @guess_num = 0
    @word_array.each do |word|
        @blanks << "_ "
    end
  end

  #Test guesses from user 2 to see if the letters are in the word.
  def check_guess(game, guess)
    @guess_num = 0
    guess_list = []

    puts @blanks.join
    puts "Look at the blanks above that represent a word."
    puts "Guess a letter a-z:"
    p guess

    index_word = @word_array.index(guess)
    index_guess = guess_list.index(guess)

    #If the letter is in the word, let them know! And store the letter in the correct index in the blanks hash so they can see this info before their next guess.
    if index_word != nil
      puts "YAY! Correct! #{guess} will be placed in its corresponding place in the word."
      @blanks[index_word] = guess
       if index_guess != nil
        puts "You already guessed that!"
         @guess_num -= 1
      end
      return true

    #If the guessed letter is not in the word, store in a new array so we can discount their guess if they guess that letter again.
    elsif index_word == nil
      if index_guess != nil
        puts "You already guessed that!"
        @guess_num -= 1
      elsif index_guess == nil
        puts "Sorry! #{guess} is not in the word. Good Try!"
      end
      return false
    end
  guess_list.push(guess)
  @guess_num += 1
  end


  #How many guesses do they have left?
  def guess_number(game, guess_num)
    if @length == guess_num.to_i
      puts "Thanks for playing! You have used all your guesses."
        if @blanks == @word_array
          puts "Good Job! You Win!"
          puts "The word was: #{@word}"
        else @blanks != @word_array
          puts "Not sorry to rub it in.. You Lose!"
          puts "The word was: #{@word}"
        end
      return false
    else
      puts "You have used #{guess_num} out of #{@length} guesses."
      return true
  end

  end

end
