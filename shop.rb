require_relative 'product'
require_relative 'film'
require_relative 'book'


product = Film.new(title: "Криманальное чтиво", year: 1999, price: 290, count: 11)

product.year = 2000
product.update(director: "Тарантино", price: 1000)

puts product

=begin
products = []

products << Film.new(
    title: "Криманальное чтиво",
    year: 1999,
    director: "Тарантино",
    price: 290,
    count: 11)

products << Book.new(
    title: "Some Book",
    genre: "Дедектив",
    author: "Дмитрий Викторович А",
    price: 1500,
    count: 10)

products.each { |x| puts x }
=end
