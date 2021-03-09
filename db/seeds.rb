# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Removing old customers, brands, product files and matches"
UserProduct.destroy_all
CustomerDatum.destroy_all
ProductSize.destroy_all
Product.destroy_all
Brand.destroy_all
User.destroy_all
puts "Adding some Customers & products :)"
puts "Creating a user :)"
User.create!(
    email: "cydnie@mail.com",
    password: "123456"
  )

puts "Adding some Brands :)"
Brand.create!(
    user: User.first,
    name: 'saenguin'
  )
puts "Creating a brand :)"
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
    body_shape: 1,
    fit_preference: 0
  )
puts "Creating a product :)"
Product.create!(
    brand: Brand.first,
    name: "White Blouse",
    fabric_type: "tight less than 5cm allowance",
    garment_type:  "shirt"
  )

  Product.create!(
    brand: Brand.first,
    name: "Navy Blazer",
    fabric_type: "tight less than 5cm allowance",
    garment_type:  "jacket"
  )

puts "Creating a blazer :)"
ProductSize.create(
    product: Product.last,
    size_name: "extra small",
    hip_measurement: 45.40,
    bust_measurement: 46.00,
    waist_measurement: 35.90,
    length_measurement: 69.10
  )
ProductSize.create(
    product: Product.last,
    size_name: "small",
    hip_measurement: 47.90,
    bust_measurement: 46.00,
    waist_measurement: 38.40,
    length_measurement: 69.70
  )
ProductSize.create(
    product: Product.last,
    size_name: "medium",
    hip_measurement: 51.40,
    bust_measurement: 52.00,
    waist_measurement: 41.90,
    length_measurement: 69.70
  )
ProductSize.create(
    product: Product.last,
    size_name: "large",
    hip_measurement: 54.90,
    bust_measurement: 55.50,
    waist_measurement: 45.40,
    length_measurement: 71.50
  )
ProductSize.create(
    product: Product.last,
    size_name: "extra large",
    hip_measurement: 58.40,
    bust_measurement: 59.00,
    waist_measurement: 48.90,
    length_measurement: 72.40
  )

puts "Creating a blouse :)"
ProductSize.create(
    product: Product.first,
    size_name: "extra small",
    hip_measurement: 50,
    bust_measurement: 47.5,
    waist_measurement: 48.5,
    length_measurement: 67.5
  )
ProductSize.create(
    product: Product.first,
    size_name: "small",
    hip_measurement: 52.5,
    bust_measurement: 50,
    waist_measurement: 51,
    length_measurement: 68.1
  )
ProductSize.create(
    product: Product.first,
    size_name: "medium",
    hip_measurement: 56,
    bust_measurement: 53.5,
    waist_measurement: 54.5,
    length_measurement: 69
  )
ProductSize.create(
    product: Product.first,
    size_name: "large",
    hip_measurement: 59.5,
    bust_measurement: 57,
    waist_measurement: 58,
    length_measurement: 69.9
  )
ProductSize.create(
    product: Product.first,
    size_name: "extra large",
    hip_measurement: 63,
    bust_measurement: 60.5,
    waist_measurement: 61.5,
    length_measurement: 70.8
  )
UserProduct.create(
  product_size: ProductSize.first,
  customer_datum: CustomerDatum.first
  )
