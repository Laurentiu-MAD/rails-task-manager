# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
# db/seeds.rb

require 'faker'

20.times do
  Task.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    details: Faker::Lorem.paragraph(sentence_count: 2),
    created_at: Faker::Time.backward(days: 30, period: :evening),
    updated_at: Faker::Time.backward(days: 5, period: :afternoon)
  )
end

puts "✅ 20 tâches créées avec succès !"

#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
