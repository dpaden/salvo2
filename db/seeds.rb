# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u1=User.create(name:"test1",email:"test1@test.com",password:"password", password_confirmation:"password")
u2=User.create(name:"test2",email:"test2@test.com",password:"password", password_confirmation:"password")
u3=User.create(name:"test3",email:"test3@test.com",password:"password", password_confirmation:"password")

s = Status.create(id:1,name:"New")
Status.create(id:2,name:"Ready")
Status.create(id:3,name:"Started")
Status.create(id:4,name:"Completed")

ship1=Ship.create(id:1,name:"Aircraft Carrier", code:"A", size:5)
ship2=Ship.create(id:2,name:"Battle Ship", code:"B", size:4)
ship3=Ship.create(id:3,name:"Submarine", code:"S", size:3)
ship4=Ship.create(id:4,name:"Destroyer", code:"D", size:3)
ship5=Ship.create(id:5,name:"Patrol Boat", code:"P", size:2)

g=Game.create(name: "test1 game", status: s, home_user_id: u1.id)
g.away_user_id=u2.id
g.save

g.positions << Position.create(game:g, ship: ship1, user_id:u1.id, location: "A1:A5")
g.positions << Position.create(game:g, ship: ship2, user_id:u1.id, location: "B1:B4")
g.positions << Position.create(game:g, ship: ship3, user_id:u1.id, location: "C1:C3")
g.positions << Position.create(game:g, ship: ship4, user_id:u1.id, location: "D1:A3")
g.positions << Position.create(game:g, ship: ship5, user_id:u1.id, location: "E1:E2")


g.positions << Position.create(game:g, ship: ship1, user_id:u2.id, location: "E1:E5")
g.positions << Position.create(game:g, ship: ship2, user_id:u2.id, location: "D1:D4")
g.positions << Position.create(game:g, ship: ship3, user_id:u2.id, location: "C1:C3")
g.positions << Position.create(game:g, ship: ship4, user_id:u2.id, location: "B1:B3")
g.positions << Position.create(game:g, ship: ship5, user_id:u2.id, location: "A1:A2")
# dupe here
