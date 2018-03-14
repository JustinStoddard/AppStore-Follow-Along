categories = ['Games', 'Health & Fitness', 'Business', 'Lifestyle', 'Entertainment', 'Sports']
featured = [true, false]

100.times do
  App.create(
    name: Faker::App.name,
    description: Faker::Lorem.paragraph(4),
    version: Faker::App.version,
    author: Faker::App.author,
    category: categories.sample,
    price: Faker::Commerce.price.to_f,
    logo: Faker::Avatar.image("my-own-slug", "50x50", "bmp", "set2", "bg1"),
    featured: featured.sample
  )
end
