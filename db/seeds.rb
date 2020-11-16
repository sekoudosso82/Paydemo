# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Item.destroy_all 
# Shoppingcart.destroy_all 
# ShoppingcartItem.destroy_all 

User.create( username: "Sekou", full_name: "Sekou Dosso", email: "sekou@gmail.com", phone: 123321, password: "123321")
User.create( username: "Ben", full_name: "Ben Konate", email: "ben@gmail.com", phone: 321123, password: "321123")

Item.create( user_id: 1, description: "berluti", img_url: "https://www.berluti.com/dw/image/v2/BBMR_PRD/on/demandware.static/-/Sites-masterCatalog_Berluti/default/dwb1785f22/images/S3873-018_fast-track-torino-alligator-leather-sneaker_nero_berluti_01.jpg?sw=2000&sfrm=jpg", price: 1000.0)
Item.create( user_id: 1, description: "JM Weston", img_url: "https://cdn.jmweston.com/media/catalog/product/cache/2/image/1903x862/9df78eab33525d08d6e5fb8d27136e95/w/e/we1131eyu2412ap.jpg", price: 1000)
Item.create( user_id: 1, description: "John Lobb", img_url: "https://thumbor-gc.tomandco.uk/unsafe/trim/1154x769/center/middle/smart/filters:upscale():fill(white):sharpen(0)/https://www.johnlobb.com/static/media/catalog/product/c/h/chapel_black_museum_calf__de_ail.jpg", price: 1500)

Shoppingcart.create( user_id: 1)
Shoppingcart.create( user_id: 2)

ShoppingcartItem.create( shoppingcart_id: 2, item_id: 1 )
ShoppingcartItem.create( shoppingcart_id: 2, item_id: 2 )