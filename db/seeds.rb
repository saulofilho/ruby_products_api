# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create([
  {
    name: "A",
    brand: "AA",
    price: "123,00",
    description: "aaa aaa aaa"
  },
  {
    name: "B",
    brand: "BB",
    price: "123,00",
    description: "bbb bbb bbb"
  },
  {
    name: "C",
    brand: "CC",
    price: "123,00",
    description: "ccc ccc ccc"
  }
])