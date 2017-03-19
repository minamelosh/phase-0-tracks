#Write a Ruby program that uses persistent data to make your life better,
#or makes someone else's life better. Find several opportunities to try s
#omething not explicitly shown in the video.
#Can users create data?
#Retrieve it?
#Manipulate it? It's up to you.
#Push yourself, and decide with integrity when you are finished.

# OPERATION Wedding Party!
#This program helps you orgainze your guest list and todo lists for yourself
#This can help let you know who is going, who is single, and who is a vegetarian
#These lists help you easily access the data you need!

# talk about Object Relational Mapping (ORM)
#scripting program like Java or Ruby that puts data into hashes or arrays

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("wedding.db")
db.results_as_hash = true

# create table commancd with fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS guests(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    phone_number VARCHAR(255),
    rsvp BOOLEAN,
    single BOOLEAN,
    vegetarian BOOLEAN
  )
SQL

# create a guests table (if it's not there already)
db.execute(create_table_cmd)

# add a test guest
db.execute("INSERT INTO guests (name, age, phone_number, rsvp, single, vegetarian) VALUES ('Betsy', 33, '(805)453-3333', 'true', 'true', 'false')")

# add Guests so its a PARTAY!
#begin
def create_guest(db, name, age, phone_number, rsvp, single, vegetarian)
  db.execute("INSERT INTO guests (name, age, phone_number, rsvp, single, vegetarian) VALUES (?, ?, ?, ?, ?, ?)", [name, age, phone_number, rsvp, single, vegetarian])
end

#guest_list = 0
#if guest_list < 100
  10.times do
    create_guest( db, Faker::Name.name, Faker::Number.number(2), Faker::PhoneNumber.cell_phone, ["true", "false"].sample,["true", "false"].sample,["true", "false"].sample)
  end
#  guest_list = guest_list +10
#end
#puts guest_list


# explore ORM by retrieving data

#Creates a list of guests and phone numbers who RSVP'd as no
call_no_rsvp = db.execute("SELECT * FROM guests WHERE rsvp='false' ")
puts "Confirm if the following guests are attending."
call_no_rsvp.each do |guest|
  puts "#{guest['name']} Phone number: #{guest['phone_number']}"
end

#call this method when you have your confirmations and want to delete those who can't come
#this will make your list only those guests who are attending!!
def delete_no_rsvp(db)
  db.execute("DELETE FROM guests WHERE rsvp='false' ")
end

puts
#Creates a lits of those single guests as well as their ages
#use this list to help you make the seating chart!
singles_table = db.execute("SELECT * FROM guests WHERE single='true' ")
puts "Seat these people at the SINGLES TABLES"
singles_table.each do |guest|
  puts "#{guest['name']} #{guest['age']}"
end

puts

#Creates a list of guests that are vegetarians to help you know how many veggie meals you need.
#Give this list and the seating chart to the servers to help them serve guests correctly
vegetarians = db.execute("SELECT * FROM guests WHERE vegetarian='true' ")
puts "Make vegetarian meals for all these guests"
vegetarians.each do |guest|
  puts "#{guest['name']}"
end

puts
#list of who RSVP'd as going!
whos_going = db.execute("SELECT * FROM guests WHERE rsvp='true' ")
puts "Coming to the wedding!"
whos_going.each do |guest|
  puts "#{guest['name']}"
end
