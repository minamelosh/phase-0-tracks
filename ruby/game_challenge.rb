class Game
  attr_accessor :word, :word_array, :length, :blanks

  #Get a word from user one.
  def initialize()
    dictionary = ["apple", "big", "catastrophe", "dictionary", "elephant", "fiction", "garbage", "hello", "insane", "juggle", "kimono", "lacrosse", "mission", "nice", "orange", "pistachio", "quick", "rain", "saturn", "tackle", "unicycle", "veins", "water", "yellow", "zebra", "mystery", "programming", "star", "friends", "basketball", "mouse", "neon", "hand"]
    @word = dictionary.sample
    puts

    @word_array = @word.chars
    @length = @word.length
    @blanks = []

    @word_array.each do |word|
        @blanks << "_ "
    end
  end

  #Test guesses from user 2 to see if the letters are in the word.
  def check_guess(game)
    guess_num = 0
    guess_letter = ['a', 'b', 'c' 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y','z']
    guess_list = []

    until guess_num == length
      puts @blanks.join
      puts "Look at the blanks above that represent a word."
      puts "Guess a letter a-z:"
      guess = guess_letter.sample
      p guess

      index_word = @word_array.index(guess)
      index_guess = guess_list.index(guess)

        #If the letter is in the word, let them know! And store the letter in the correct index in the blanks hash so they can see this info before their next guess.

        if index_word != nil
          puts "YAY! Correct! #{guess} will be placed in its corresponding place in the word."
          @blanks[index_word] = guess
          if index_guess != nil
            puts "You already guessed that!"
            guess_num -= 1
          end

        #If the guessed letter is not in the word, store in a new array so we can discount their guess if they guess that letter again.

        elsif index_word == nil
          if index_guess != nil
            puts "You already guessed that!"
            guess_num -= 1
          elsif index_guess == nil
            puts "Good Try!"
          end
        end

      guess_list.push(guess)

      guess_num += 1
      puts "You have used #{guess_num} out of #{@length} guesses!"
    end

    #Let them know if they won or lost!
    def win_lose(game)
      if @blanks == @word_array
        puts "Good Job! You Win!"
        puts "The word was: #{@word}!"
      else @blanks != @word_array
        puts "Not sorry to rub it in.. You Lose!"
        puts "The word was: #{@word}!"
      end
    end
  end
end

=begin
play = Game.new()
play.check_guess(play)
play.win_lose(play)
=
