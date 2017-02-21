master_chef = {
  breakfast: {
    challenge: {
      time:"1 hour",
      restrictions:"no oven",
      money:"$50",
      dishes:"2"
    },
    ingredients: [
      "eggs",
      "oatmeal",
      "yogurt",
      "bananas",
      "chocolate",
      "cream"
    ]
  },
  lunch: {
    challenge: {
      time:"1.5 hours",
      restrictions:"none",
      money:"$100",
      dishes:"3"
    },
    ingredients: [
      "cheese",
      "beans",
      "avacado",
      "rice",
      "lettuce",
      "chicken",
      "salasa",
      "butter"
    ]
  },
  dinner: {
    challenge: {
      time:"2 hours",
      restrictions:"no stove",
      money:"$150",
      dishes:"4"
    },
    ingredients: [
      "steak",
      "spinach",
      "tomatoes",
      "apples",
      "walnuts",
      "chives",
      "potatoes",
      "rice",
      "oil"
    ]
  }
}

p master_chef[:breakfast][:challenge][:restrictions]

p master_chef[:lunch][:challenge][:time]

p master_chef[:dinner][:challenge][:dishes]

p master_chef[:breakfast][:ingredients]

master_chef[:lunch][:ingredients][0]="strawberries"
p master_chef[:lunch][:ingredients]

master_chef[:dinner][:ingredients].push("spaghetti")
p master_chef[:dinner][:ingredients]
