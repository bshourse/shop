require_relative 'product'
require_relative 'film'
require_relative 'book'

current_path = File.dirname(__FILE__ )
film = Film.from_file(current_path + '/data/films/1.txt')
book = Book.from_file(current_path + '/data/books/1.txt')
puts film
puts book

# Пытаемся вызвать метод from_file у класса Product и ловим ошибку
begin
  Product.from_file(current_path + '/data/films/1.txt')
rescue NotImplementedError
  puts 'Метод класса Product.from_file не реализован'
end
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
