# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'json'

puts "clean up db"
Hiragana.destroy_all
Katakana.destroy_all

puts "Load and parse the Hiragana JSON file"
hiragana_file = File.read('db/kana/hiragana.json')
hiragana_data = JSON.parse(hiragana_file)

puts "Adding the Hiragana"
hiragana_data.each do |kana|
  Hiragana.create!(
    kana: kana["kana"],
    romaji: kana["roumaji"]
  )
end
puts "Hiragana Added"

puts "Load and parse the Katakana JSON file"
katakana_file = File.read('db/kana/katakana.json')
katakana_data = JSON.parse(katakana_file)

puts "Adding the Katakana"
katakana_data.each do |kana|
  Katakana.create!(
    kana: kana["kana"],
    romaji: kana["roumaji"]
  )
end
puts "Katakana Added"

puts "All Kana Added"
