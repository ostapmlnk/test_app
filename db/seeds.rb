# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  City.create([{name: 'Lviv'} , {name: 'Kiev'}])
  user = User.create([{name: 'Ostap', city_id: City.first.id} , {name: 'Maxim', city_id: City.last.id}])
  Item.create ([{name: 'bag', user_id: User.first.id} , {name: 'table', user_id: User.find(5).id}])
  Booking.create (started_at: '1999.06.06' , ended_on: '2000.06.06' , user_id: user.id , item_id: Item.find_by(name:'bag').id)
  Booking.create (started_at: '1956.06.06' , ended_on: '2001.06.06' , user_id: User.find(2).id , item_id: Item.find_by(name:'table').id)
  Review.create(text: 'nice bag' , reviewable: Item.find_by(name: 'bag') , user_id: User.find(5).id )
  Review.create(text: 'nice table' , reviewable: Item.find_by(name: 'table') , user_id: User.find(2).id )