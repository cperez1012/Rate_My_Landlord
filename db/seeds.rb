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

User.create(username: 'DJK', password: '123', first_name: 'David', last_name: 'Kirsch')
User.create(username: 'Roy_nyc', password: '321', first_name: 'Roy', last_name: 'Flores')
User.create(username: 'Snowboarder85', password: '789', first_name: 'Jordan', last_name: 'Kirsch')
User.create(username: 'JeepAllTheWay', password: '987', first_name: 'Chelsea', last_name: 'Ritz-Kirsch')


Apartment.create(street_number: 1, street_name: "River Place", city: "New York", state: "NY", zipcode: 10036, country: "USA", photoImg: "https://cdngeneral.rentcafe.com/dmslivecafe/3/228633/11-Waverly-Place--Front_WEB.jpg?crop=(0,0,300,225)&cropxunits=300&cropyunits=225&width=350")
Apartment.create(street_number: 415, street_name: "West 57th street", city: "New York", state: "NY", zipcode: 10031, country: "USA", photoImg: "https://media.guestofaguest.com/t_article_content/gofg-media/2019/01/1/51893/49933486_107361643707543_4299262240395492308_n.jpg")
Apartment.create(street_number: 1793, street_name: "Amsterdam Avenue", city: "New York", state: "NY", zipcode: 10031, country: "USA", photoImg: "https://mymagicearth.com/wp-content/uploads/2019/04/Mormandie-Apartments_1.jpg")



# Comment.create(message: "This is a great place!", rating: rand(1..5), rating_noise: rand(1..5), rating_appearance: rand(1..5), rating_safety: rand(1..5), rating_staff: rand(1..5), rating_maintenance: rand(1..5), user_id: User.all.sample.id, apartment_id: Apartment.all.sample.id)
# Comment.create(message: "Terrible place!", rating: rand(1..5), rating_noise: rand(1..5), rating_appearance: rand(1..5), rating_safety: rand(1..5), rating_staff: rand(1..5), rating_maintenance: rand(1..5), user_id: User.all.sample.id, apartment_id: Apartment.all.sample.id)
# Comment.create(message: "This is a an ok place", rating: rand(1..5), rating_noise: rand(1..5), rating_appearance: rand(1..5), rating_safety: rand(1..5), rating_staff: rand(1..5), rating_maintenance: rand(1..5), user_id: User.all.sample.id, apartment_id: Apartment.all.sample.id)
