puts "How many employees will be procressed?"
employees = gets.chomp
survey = 0

until survey == employees

  #Starting general info survey:
  #Human name?
  puts "What is your name?"
  name = gets.chomp
  if name == “Drake Cula”
    vampire = true
  elsif name == “Tu Fang”
    vampire = true
  else
    vampire = false
  end

  #Human age?
  puts "How old are you?"
  age = gets.chomp.to_i
  if age < 100
    human_age = true
  else
    human_age = false
    imortal = true
  end

  #Does the year they were born match their age? If not they may be lying!
  puts "Where year were you born?"
  year = gets.chomp.to_i
  calculated_age = 2017 - year
  if calculated_age == age
    human_age = true
    imortal = false
  else
    human_age = false
    imortal = true
  end

  #Storeing valid data for garlic, humans eat it!
  valid_input = false
  until valid_input
    puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
    garlic = gets.chomp
    if garlic == "y"
      likes_garlic = true
      hates_garlic = false
      valid_input = true
    elsif garlic == "n"
       hates_garlic = true
       likes_garlic = false
       valid_input = true
    else
    end
  end

  #Storeing valid data for health_insurance, humans need it!
  valid_info = false
  until valid_info
  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  health_insurance = gets.chomp
    if health_insurance == "y"
      health_insurance = true
      waives_insurance = false
      valid_info = true
    elsif health_insurance == "n"
      waives_insurance = true
      health_insurance = false
      valid_info = true
    else
    end
  end

  #Are they a Vampire? Lets evaluate based on their input.
  if human_age && likes_garlic
    puts “Probably not a vampire.”
  elsif immortal && hates_garlic || wavies_insurance
    puts “Probably a vampire.”
  elsif immortal && hates_garlic && waives_insurance
    puts “Almost certainly a vampire.”
  elsif vampire
    puts “Definitely a vampire.”
  else
    puts “Results inconclusive.”
  end

  #Allergy Survey, Vampires are allergic to sunshine!
  valid_allergy = true
  until valid_allergy == false
    puts "Please name any allergies you have, type done when finished."
    allergy = gets.chomp
    if allergy == "done"
      puts "Thank you!"
      valid_allergy = false
    elsif allergy == "sunshine"
      puts "Probably a vampire"
      valid_allergy = false
    else
      valid_allergy = true
    end
  end

  survey += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
