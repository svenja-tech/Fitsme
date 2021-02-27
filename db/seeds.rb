# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Removing old customers, brands, product files and matches"

CustomerDatum.destroy_all
ProductSize.destroy_all
Product.destroy_all
Brand.destroy_all
UserProduct.destroy_all
User.destroy_all

#Customer_product_match.destroy_all


puts "Adding some Customers & products :)"



puts "Creating a user :)"

User.create!(
    email: "cydnie@mail.com",
    password: "123456",
)

puts "Adding some Brands :)"

Brand.create!(
    user: User.first,
    name: 'saenguin'
)
puts "Creating a brand :)"
Brand.create!(
    user: User.first,
    name: 'tri tone'
)

User.create!(
    email: "a@mail.com",
    password: "123456",
    brand: Brand.first
)


CustomerDatum.create!(
    user: User.first,
    age: 20,
    height: 170,
    weight:  60,
    body_shape: 1
)
puts "Creating a product :)"
Product.create!(
    brand: Brand.first,
    name: "White Blouse",
    fabric_type: "silk",
    garment_type:  "shirt",
)

ProductSize.create!(
    product: Product.first,
    size_name: "extra small",
    hip_measurement: 50,
    bust_measurement: 47.5,
    waist_measurement: 48.5,
    length_measurement: 67.5
  )

ProductSize.create!(
    product: Product.first,
    size_name: "small",
    hip_measurement: 52.5,
    bust_measurement: 50,
    waist_measurement: 51,
    length_measurement: 68.1
  )
ProductSize.create!(
    product: Product.first,
    size_name: "medium",
    hip_measurement: 56,
    bust_measurement: 53.5,
    waist_measurement: 54.5,
    length_measurement: 69
  )

ProductSize.create!(
    product: Product.first,
    size_name: "large",
    hip_measurement: 59.5,
    bust_measurement: 57,
    waist_measurement: 58,
    length_measurement: 69.9
  )

ProductSize.create!(
    product: Product.first,
    size_name: "extra large",
    hip_measurement: 63,
    bust_measurement: 60.5,
    waist_measurement: 61.5,
    length_measurement: 70.8
  )

UserProduct.create!(
  product_size: ProductSize.first,
  customer_datum: CustomerDatum.first
  )
