# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Deleting materials and users'
User.destroy_all
Material.destroy_all
puts 'End'
puts 'Creating a person 1'
user = User.create(name: "Juju", email: "test@test.com", password: "123123", password_confirmation: "123123",
            address: "Avenida Paulista, 1811 - Bela Vista, São Paulo - SP, 01311-200, Brazil", role: "person")
puts 'End'
puts 'Creating a cooperative 1'
User.create(name: "Cooperativa Paulista de Teatro",
            email: "a@a.com",
            password: "123123",
            password_confirmation: "123123",
            address: "Rua Doutor Rafael de Barros, 262 - Paraíso, São Paulo - SP, 04003-041, Brazil",
            role: "cooperative",
            description: Faker::Quotes::Chiquito.sentence)
puts 'End'
puts 'Creating a cooperative 2'
User.create(name: "Ayres Comércio e Reciclagem de Metais",
            email: "b@b.com",
            password: "123123",
            password_confirmation: "123123",
            address: "Rua Fradique Coutinho, 153 - Pinheiros, São Paulo - SP, 05416-010, Brazil",
            role: "cooperative",
            description: Faker::Quotes::Chiquito.sentence)
puts 'End'
puts 'Creating a cooperative 3'
User.create(name: "Bem Estar Reciclagem",
            email: "c@c.com",
            password: "123123",
            password_confirmation: "123123",
            address: "Rua Jericó, 193, Sumarezinho, São Paulo - SP, 05435-040, Brazil",
            role: "cooperative",
            description: Faker::Quotes::Chiquito.sentence)
puts 'End'
puts 'Creating materials'
material = Material.create(name: "Paper", description: Faker::Lorem.sentence)
Material.create(name: "Plastic", description: Faker::Lorem.sentence)
Material.create(name: "Metal", description: Faker::Lorem.sentence)
Material.create(name: "Batteries", description: Faker::Lorem.sentence)
Material.create(name: "Glass", description: Faker::Lorem.sentence)
Material.create(name: "Organic", description: Faker::Lorem.sentence)
Material.create(name: "Clothes", description: Faker::Lorem.sentence)
Material.create(name: "Electronics", description: Faker::Lorem.sentence)
Material.create(name: "Carton", description: Faker::Lorem.sentence)
puts 'End'
