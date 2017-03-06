require_relative '6.6_challenge'

describe Game do
  let(:play) { Game.new("hello") }

  it "Guess a letter that might be in the word " do
    expect(play.check_guess(play, "e")).to eq true
  end

  it "Check how many guesses have been used, and how many are left" do
    expect(play.guess_number(play, 1)).to eq true
  end

  it "Guess a different letter that might be in the word" do
    expect(play.check_guess(play, "a")).to eq false
  end

  it "Check how many guesses have been used, and how many are left" do
    expect(play.guess_number(play, 2)).to eq true
  end

  it "Guess a different letter that might be in the word" do
    expect(play.check_guess(play, "p")).to eq false
  end

  it "Check how many guesses have been used, and how many are left" do
    expect(play.guess_number(play, 3)).to eq true
  end

  it "Guess a different letter that might be in the word" do
    expect(play.check_guess(play, "o")).to eq true
  end

  it "Check how many guesses have been used, and how many are left" do
    expect(play.guess_number(play, 4)).to eq true
  end

  it "Guess a different letter that might be in the word" do
    expect(play.check_guess(play, "b")).to eq false
  end

  it "Check how many guesses have been used, and how many are left" do
    expect(play.guess_number(play, 5)).to eq false
  end

end
