# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

##puts 'Deleting materials, users and trades'
#User.destroy_all
##Material.destroy_all
#Trade.destroy_all
#puts 'End'

puts 'Creating a person 1'
person1 = User.create!(name: "Milo", email: "test@test.com", password: "123123", password_confirmation: "123123",
                   address: "Avenida Paulista 1811 - Bela Vista, São Paulo", role: "person")
puts 'Creating a person 2'
person2 = User.create!(name: "Dani", email: "test1@test.com", password: "123123", password_confirmation: "123123",
                   address: "Rua Jericó, 193, Sumarezinho, São Paulo", role: "person")
puts 'Creating a person 3'
person3 = User.create!(name: "Patty", email: "test2@test.com", password: "123123", password_confirmation: "123123",
                   address: "Rua Manoel Dutra 595 - Bela Vista, São Paulo", role: "person")
puts 'Creating a person 3'
person4 = User.create!(name: "Vinny", email: "test3@test.com", password: "123123", password_confirmation: "123123",
                   address: "Alameda Ministro Rocha Azevedo 72, São Paulo", role: "person")
puts 'End'

puts 'Creating a cooperative 1'
cooperative1 = User.create!(name: "Cooperativa Paulista de Teatro",
            email: "a@a.com",
            password: "123123",
            password_confirmation: "123123",
            address: "Rua Doutor Rafael de Barros, 262 - Paraíso, São Paulo - SP, 04003-041, Brazil",
            role: "cooperative",
            description: Faker::Quotes::Chiquito.sentence)
puts 'End'
puts 'Creating a cooperative 2'
cooperative2 = User.create!(name: "Ayres Comércio e Reciclagem de Metais",
            email: "b@b.com",
            password: "123123",
            password_confirmation: "123123",
            address: "Rua Fradique Coutinho, 153 - Pinheiros, São Paulo - SP, 05416-010, Brazil",
            role: "cooperative",
            description: Faker::Quotes::Chiquito.sentence)
puts 'End'
puts 'Creating a cooperative 3'
cooperative3 = User.create!(name: "Bem Estar Reciclagem",
            email: "c@c.com",
            password: "123123",
            password_confirmation: "123123",
            address:  "Avenida Paulista 900, São Paulo",
            role: "cooperative",
            description: Faker::Quotes::Chiquito.sentence)
puts 'End'
puts 'Creating a cooperative 4'
cooperative4 = User.create!(name: "Bem Estar Reciclagem",
            email: "d@d.com",
            password: "123123",
            password_confirmation: "123123",
            address:  "Avenida Paulista 48, São Paulo",
            role: "cooperative",
            description: Faker::Quotes::Chiquito.sentence)
puts 'End'

puts 'Creating materials'
material1 = Material.create!(name: "Paper")
material2 = Material.create!(name: "Plastic", description: Faker::Lorem.sentence)
material3 = Material.create!(name: "Metal", description: Faker::Lorem.sentence)
material4 = Material.create!(name: "Batteries", description: Faker::Lorem.sentence)
Material.create!(name: "Glass", description: Faker::Lorem.sentence)
Material.create!(name: "Organic", description: Faker::Lorem.sentence)
Material.create!(name: "Clothes", description: Faker::Lorem.sentence)
Material.create!(name: "Electronics", description: Faker::Lorem.sentence)
Material.create!(name: "Carton", description: Faker::Lorem.sentence)
Material.create!(name: "Blisters", description: Faker::Lorem.sentence)
Material.create!(name: "Toxic", description: Faker::Lorem.sentence)
Material.create!(name: "Others", description: Faker::Lorem.sentence)
puts 'End'

puts 'Creating Trades'
Trade.create!(created_date: DateTime.now, delivery_date: "2022-12-20", delivery_method: "Pick up", material_quantity: 3, person: person1, cooperative: cooperative1, material: material1, status: "Pending")
Trade.create!(created_date: DateTime.now, delivery_date: "2022-12-01", delivery_method: "Drop off", material_quantity: 2, person: person1, cooperative: cooperative2, material: material2, status: "Pending")
Trade.create!(created_date: DateTime.now, delivery_date: "2022-12-18", delivery_method: "Pick up", material_quantity: 10, person: person1, cooperative: cooperative3, material: material3, status: "Pending")
Trade.create!(created_date: DateTime.now, delivery_date: "2022-11-28", delivery_method: "Pick up", material_quantity: 9, person: person1, cooperative: cooperative4, material: material4, status: "Pending")
Trade.create!(created_date: DateTime.now, delivery_date: "2022-11-30", delivery_method: "Pick up", material_quantity: 20, person: person2, cooperative: cooperative1, material: material1, status: "Pending")
Trade.create!(created_date: DateTime.now, delivery_date: "2022-12-02", delivery_method: "Pick up", material_quantity: 3, person: person3, cooperative: cooperative1, material: material1, status: "Pending")
Trade.create!(created_date: DateTime.now, delivery_date: "2022-12-20", delivery_method: "Pick up", material_quantity: 5, person: person3, cooperative: cooperative2, material: material2, status: "Pending")
Trade.create!(created_date: DateTime.now, delivery_date: "2022-12-01", delivery_method: "Drop off", material_quantity: 10, person: person4, cooperative: cooperative1, material: material1, status: "Pending")
Trade.create!(created_date: DateTime.now, delivery_date: "2022-12-01", delivery_method: "Drop off", material_quantity: 10, person: person4, cooperative: cooperative2, material: material2, status: "Pending")
Trade.create!(created_date: DateTime.now, delivery_date: "2022-12-01", delivery_method: "Pick up", material_quantity: 15, person: person4, cooperative: cooperative3, material: material3, status: "Pending")
Trade.create!(created_date: DateTime.now, delivery_date: "2022-12-01", delivery_method: "Pick up", material_quantity: 12, person: person4, cooperative: cooperative4, material: material4, status: "Pending")
puts 'End'
