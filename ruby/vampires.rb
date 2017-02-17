puts "How many employees will be procressed?"
employees = gets.chomp.to_i
survey = 0

until survey == employees

  #Starting general info survey:
  #Human name?
  puts "What is your name?"
  name = gets.chomp

  #Human age?
  puts "How old are you?"
  age = gets.chomp.to_i
  if age < 100
    human_age = true
    imortal = false
  else
    human_age = false
    imortal = true
  end

  #Does the year they were born match their age?? If not they may be lying!
  puts "What year were you born?"
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
  Q1 = (human_age && likes_garlic || health_insurance)
  Q2 = (imortal && hates_garlic || waives_insurance)
  Q3 = (imortal && hates_garlic && waives_insurance)

    if Q1
      vampire = "Probably not a vampire."
    end
    if Q2
      vampire = "Probably a vampire."
    end
    if Q3
      vampire = "Almost certainly a vampire."
    end
    if name == "Drake Cula" || name == "Tu Fang"
      vampire = "Definitely a vampire."
    end
    if Q1 && Q2 && Q3 && definitely_vampire == false
      vampire = "Results inconclusive."
    end

  #Allergy Survey, Vampires are allergic to sunshine!
  valid_allergy = true
  until valid_allergy == false
    puts "Please name any allergies you have, type done when finished."
    allergy = gets.chomp
    if allergy == "done"
      valid_allergy = false
    elsif allergy == "sunshine"
      if vampire == "Probably not a vampire."
        vampire = "Probably a vampire."
      end
      valid_allergy = false
    else
      valid_allergy = true
    end
  end

  puts vampire

  survey += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
