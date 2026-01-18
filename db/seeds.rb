# Clear existing data
Item.destroy_all
List.destroy_all

# Grocery Shopping
grocery = List.create!(title: "Grocery Shopping")
[
  "Milk (the fancy oat kind)",
  "Eggs (cage-free, obviously)",
  "Bread that isn't just air",
  "Cheese - the good stuff",
  "Bananas (slightly green)",
  "Coffee beans for survival",
  "Avocados (pray they're ripe)",
  "Spinach to feel virtuous",
  "Ice cream for emotional support",
  "Pasta - multiple shapes required",
  "Tomato sauce (jarred is fine, no judgment)",
  "Chicken thighs",
  "Garlic - at least 3 heads",
  "Onions",
  "Bell peppers (all the colors)",
  "Greek yogurt",
  "Granola that's mostly chocolate",
  "Apples for the fruit bowl aesthetic",
  "Butter (salted, always salted)",
  "Hot sauce collection expansion",
  "Tortillas",
  "Black beans",
  "Limes",
  "Cilantro (genetic lottery willing)",
  "Snacks for 'emergencies'"
].each { |content| grocery.items.create!(content: content, completed: [true, false].sample) }

# Weekend Projects
weekend = List.create!(title: "Weekend Projects")
[
  "Finally hang that picture frame",
  "Organize the junk drawer (again)",
  "Fix the squeaky door",
  "Clean out the fridge",
  "Update computer software",
  "Backup photos somewhere",
  "Untangle the cord situation",
  "Water the plants (the alive ones)",
  "Change air filters",
  "Clean the coffee maker",
  "Organize bookshelf by color (or genre, undecided)",
  "Fix that wobbly table leg",
  "Clean windows (at least the visible ones)",
  "Sort through old clothes",
  "Shred ancient documents",
  "Clean behind the couch (brace yourself)",
  "Organize spice cabinet",
  "Fix the leaky faucet (YouTube university)",
  "Clean out car",
  "Patch that hole in the wall",
  "Reorganize pantry",
  "Clean the oven (ugh)",
  "Sort recycling properly for once",
  "Fix the blinds",
  "Actually read the mail pile"
].each { |content| weekend.items.create!(content: content, completed: [true, false].sample) }

# Self Care
selfcare = List.create!(title: "Self Care")
[
  "Drink 8 glasses of water",
  "Take a real lunch break",
  "Go for a walk outside",
  "Call mom",
  "Stretch for 10 minutes",
  "Read something not on a screen",
  "Go to bed before midnight",
  "Meal prep for the week",
  "Schedule that doctor appointment",
  "Take vitamins",
  "Meditate (or just sit quietly)",
  "Journal about feelings or whatever",
  "Take a bath with fancy bath bomb",
  "Do a face mask",
  "Limit doomscrolling",
  "Text a friend just to say hi",
  "Watch a comfort movie",
  "Make a playlist",
  "Try a new recipe",
  "Declutter one small space",
  "Say no to something",
  "Take a social media break",
  "Buy yourself flowers",
  "Nap without guilt",
  "Celebrate a small win"
].each { |content| selfcare.items.create!(content: content, completed: [true, false].sample) }

# Learn New Things
learning = List.create!(title: "Learn New Things")
[
  "Finish that online course",
  "Read one chapter of textbook",
  "Watch a documentary",
  "Learn 5 words in Spanish",
  "Practice guitar for 20 minutes",
  "Do a coding tutorial",
  "Listen to an educational podcast",
  "Visit a museum",
  "Take notes on that book",
  "Learn a new recipe technique",
  "Study for certification",
  "Practice typing speed",
  "Learn keyboard shortcuts",
  "Read industry newsletter",
  "Watch a TED talk",
  "Try a new programming language",
  "Learn to fold a fitted sheet (impossible?)",
  "Figure out what NFTs actually are",
  "Learn basic car maintenance",
  "Practice public speaking",
  "Take a photography walk",
  "Learn to identify 5 plants",
  "Understand the stock market (maybe)",
  "Learn a card trick",
  "Master the perfect scrambled eggs"
].each { |content| learning.items.create!(content: content, completed: [true, false].sample) }

# Trip Planning
trip = List.create!(title: "Trip Planning")
[
  "Book flights",
  "Reserve hotel/Airbnb",
  "Check passport expiration",
  "Research restaurants",
  "Make packing list",
  "Arrange pet sitter",
  "Download offline maps",
  "Check luggage weight limits",
  "Get travel-size toiletries",
  "Notify bank of travel",
  "Check phone plan for international",
  "Research local customs",
  "Book airport parking",
  "Print confirmations (old school backup)",
  "Charge all devices",
  "Download shows for flight",
  "Get travel insurance",
  "Check weather forecast",
  "Plan first day itinerary",
  "Exchange currency",
  "Pack snacks for flight",
  "Arrange airport transportation",
  "Set out-of-office email",
  "Water plants before leaving",
  "Hide spare key for emergency"
].each { |content| trip.items.create!(content: content, completed: [true, false].sample) }

puts "Created #{List.count} lists with #{Item.count} items total!"
