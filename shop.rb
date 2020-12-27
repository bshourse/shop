require_relative 'product'
require_relative 'film'
require_relative 'book'

film = Film.new(price: 290, count: 11)

puts "Фильм Ленон стоит: #{film.price} руб."
