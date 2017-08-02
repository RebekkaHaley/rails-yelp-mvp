categories = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do
  Restaurant.create(
    name: Faker::Coffee.blend_name,
    address: Faker::Address.country,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: categories.sample)
end
