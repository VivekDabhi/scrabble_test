# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Started: Seeding data'

(1..10).each do |number|
  Player.create(
    first_name: "Player-#{number}", last_name: "Ipsum",
    email: "player_email_#{number}@gmail.com", phone_number: 12312123 + number
  )
end

(1..50).each do |number|
  player_ids = Player.ids
  member_id = player_ids.sample
  opponent_id = player_ids.excluding(member_id).sample

  game = Game.new
  game.name = "Game-#{number}"
  game.description = "Scrabble, board-and-tile game in which two to four players compete in forming
   words with lettered tiles on a 225-square board; words spelled out by letters on the tiles
   interlock like words in a crossword puzzle."
  game.winning_score = rand(80..100)
  game.losing_score = rand(60..79)
  game.participants.build(player_id: member_id)
  game.participants.build(player_id: opponent_id)
  game.player_id = [member_id, opponent_id].sample
  game.save!
end

puts 'Completed: Dummy data created'
