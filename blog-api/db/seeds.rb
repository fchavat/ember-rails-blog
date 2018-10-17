# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(
  username: 'feli',
  email: 'feli@feli.com',
  password: 'feli'
)

Post.create(
  title: 'Un post',
  content: "Con su respectivo contenido! \n Hurra!!",
  user_id: u.id
)

Post.create(
  title: 'A second post, written in english',
  content: "This post was translated \n by Unknown",
  user_id: u.id
)
