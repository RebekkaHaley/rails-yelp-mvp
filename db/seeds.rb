categories = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  Restaurant.create(
    name: Faker::Coffee.blend_name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: categories.sample)
end
