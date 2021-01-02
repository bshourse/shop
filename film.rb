class Film < Product

  attr_accessor :title, :year, :director
  # Метод класса from_file считывает данные о фильме из файла, путь к которому
  # ему передали в качестве параметра и передает их на вход своему же
  # конструктору с нужными ключами.
  def self.from_file(file_path)
    file = File.readlines(file_path).map { |element| element.chomp }

    self.new(title: file[0], director: file[1], year: file[2], price: file[3].to_i, count: file[4].to_i)
  end

  def initialize(params)
    super

    @title = params[:title]
    @year = params[:year]
    @director = params[:director]
  end

  def to_s
    "Фильм #{@title}, #{@year}, реж: #{@director}, #{super}"
  end

  def update(params)
    super
    @title = params[:title] if params[:title]
    @year = params[:year] if params[:year]
    @director = params[:director] if params[:director]
  end
end
