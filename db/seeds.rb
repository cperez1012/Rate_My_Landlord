# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Apartment.destroy_all
Comment.destroy_all

User.create(username: 'David', password: '123')
User.create(username: 'Roy', password: '321')
User.create(username: 'Jordan', password: '789')
User.create(username: 'Chelsea', password: '987')

Apartment.create(address: '123 main street')
Apartment.create(address: '1 Broadway')
Apartment.create(address: '555 5th Ave')


Comment.create(message: "This is a great place!", rating: 5, user_id: User.all.sample.id, apartment_id: Apartment.all.sample.id)
Comment.create(message: "Terrible place!", rating: 1, user_id: User.all.sample.id, apartment_id: Apartment.all.sample.id)
Comment.create(message: "This is a an ok place", rating: 3, user_id: User.all.sample.id, apartment_id: Apartment.all.sample.id)