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

5.times do
Apartment.create(street_number: 1, street_name: "River Place", city: "New York", state: "NY", zipcode: 10036, country: "USA", photoImg: "https://cdngeneral.rentcafe.com/dmslivecafe/3/228633/11-Waverly-Place--Front_WEB.jpg?crop=(0,0,300,225)&cropxunits=300&cropyunits=225&width=350")
Apartment.create(street_number: 415, street_name: "West 57th street", city: "New York", state: "NY", zipcode: 10031, country: "USA", photoImg: "https://media.guestofaguest.com/t_article_content/gofg-media/2019/01/1/51893/49933486_107361643707543_4299262240395492308_n.jpg")
Apartment.create(street_number: 1793, street_name: "Amsterdam Avenue", city: "New York", state: "NY", zipcode: 10031, country: "USA", photoImg: "https://mymagicearth.com/wp-content/uploads/2019/04/Mormandie-Apartments_1.jpg")
end

5.times do
Comment.create(message: "This is a great place!", rating: 5, user_id: User.all.sample.id, apartment_id: Apartment.all.sample.id)
Comment.create(message: "Terrible place!", rating: 1, user_id: User.all.sample.id, apartment_id: Apartment.all.sample.id)
Comment.create(message: "This is a an ok place", rating: 3, user_id: User.all.sample.id, apartment_id: Apartment.all.sample.id)
end