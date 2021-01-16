# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

31.times do |x|
    uf = Uf.create(date: "#{x+1}-01-2021", price: Random.rand(10000..30000)) 
end

28.times do |y|
    uf = Uf.create(date: "#{y+1}-02-2021", price: Random.rand(10000..30000)) 
end