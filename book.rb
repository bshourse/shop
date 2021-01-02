class Book < Product

  attr_accessor :title, :genre, :author

  def self.from_file(file_path)
    file = File.readlines(file_path).map { |element| element.chomp }

    self.new(title: file[0], genre: file[1], author: file[2], price: file[3].to_i, count: file[4].to_i)
  end

  def initialize(params)
    super

    @title = params[:title]
    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    "Книга #{@title}, #{@genre}, автор - #{@author}, #{super}"
  end

  def update(params)
    super
    @title = params[:title] if params[:title]
    @genre = params[:genre] if params[:genre]
    @author = params[:author] if params[:author]
  end

end
