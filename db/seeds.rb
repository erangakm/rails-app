# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create({first_name: "ErangaG", last_name: "Manchi", email: "testdog@gmail.com", password: "erangalol"})

blogpost = user.blogposts.create({title: "My first blogpost"})
blogpost = Blogpost.create({title: "my 2nd blogpost", user_id: user.id})
blogpost = Blogpost.create({title: "my 2nd blogpost", user: user})
