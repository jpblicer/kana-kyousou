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

# Load and parse the JSON file
file = File.read(Rails.root.join('db', 'fixtures', 'filename.json'))
data = JSON.parse(file)

# Example of processing the data
data.each do |item|
  # Assuming item is a hash with the appropriate keys
  YourModel.create!(item)
end
