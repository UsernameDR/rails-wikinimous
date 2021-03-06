# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.delete_all
10.times do
  title = Faker::Sports::Football.team
  context = Faker::Books::Lovecraft.paragraph
  article = Article.new(title: title, context: context)
  article.save
end
