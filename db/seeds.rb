# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.transaction do
  100.times do
  Product.create(name: Faker::Commerce.product_name,
                 description: Faker::Lorem.paragraphs,
                 price: Faker::Commerce.price.to_i * 100 + 100,
                 image: Faker::Avatar.image)
  end
end
puts "#{Product.count}件 登録したよ！"