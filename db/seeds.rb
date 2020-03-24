# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Card.destroy_all
mari = User.create(username: 'mariworld', password: "abc123")
mari.cards.create(content_url: "https://static.highsnobiety.com/thumbor/e014qxb7bLRkjQd3AG7Dkatfeb4=/fit-in/1200x720/smart/static.highsnobiety.com/wp-content/uploads/2020/01/28145527/dangelos-voodoo-20-artists-reflect-greatest-neo-soul-album-ever-made-feat.jpg", card_title: "The Voodoo", message:"the music industry's greatest spell")

mari.cards.create(content_url: "https://www.youtube.com/embed/mVsQwJfWzoI", card_title: "Black Messiah!", message:"he's back")
tee = User.create(username: 'tee', password: "abc123")

tee.comments.create(card_id: mari.cards.first.id, user_id: tee.id, comment_text:"yoo thats a word!")
puts "done"

