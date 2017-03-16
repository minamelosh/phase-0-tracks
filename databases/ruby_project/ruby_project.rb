#Write a Ruby program that uses persistent data to make your life better,
#or makes someone else's life better. Find several opportunities to try s
#omething not explicitly shown in the video.
#Can users create data?
#Retrieve it?
#Manipulate it? It's up to you.
#Push yourself, and decide with integrity when you are finished.

# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)
#scripting program like Java or Ruby that puts data into hashes or arrays

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("wedding.db")
#db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS guests(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    rsvp BOOLEAN,
    single BOOLEAN,
    vegetarian BOOLEAN
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test guest
db.execute("INSERT INTO guests (name, age, rsvp, single, vegetarian) VALUES ('Betsy', 33, 'true', 'true', 'false')")

# add LOOOOTS of kittens!
# so. many. kittens.
#KittenExplosion
def create_guest(db, name, age)
  db.execute("INSERT INTO guests (name, age, rsvp, single, vegetarian) VALUES (?, ?, ?, ?, ?)", [name, age, rsvp, single, vegetarian])
end

100.times do
  create_kitten(db, Faker::Name.name, Faker::Number.number(2),[true, false].sample,[true, false].sample,[true, false].sample )
end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end
