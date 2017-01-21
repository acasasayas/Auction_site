# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Albertiku El Guarrete', mail: 'guarrete@macbookwater.com', password: 'albert')
User.create(username: 'JoseTux MCPena', mail: 'mcpena@tuxcent.com', password: 'jose')
User.create(username: 'Charlie El Chocolatero', mail: 'ludocharlie@pokerstar.com', password: 'charlie')

Product.create(title: 'Plug Anal',description: 'Gran Plug Anal de 20cm para los más expertos', deadline: Date.today + 1.month,user_id: 2,minimum_bid: 50)
Product.create(title: 'Gafas de Emoji',description: 'Te transforman al instante en un developer de primera talla. Se las robé cuando estaba despistado en clase. Creo que se pegó un buen guarrazo.', deadline: Date.today + 1.month,user_id: 2,minimum_bid: 20)

Bid.create(amount: 500,user_id: 1,product_id: 1)
Bid.create(amount: 600,user_id: 2,product_id: 1)
