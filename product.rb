class Product

  attr_reader :price, :count

  def initialize(params)
    @price = params[:price]
    @count = params[:count]
  end

end
