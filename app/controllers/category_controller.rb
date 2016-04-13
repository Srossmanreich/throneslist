get '/categories/:id' do
  @categories = Category.all
  @id = params[:id]
  @house = @categories.find(@id)

  @items = @house.articles

  if @items.empty?
    @catch = "No goods for sale yet"
  else
    @catch = ""
  end

  erb :"categories/index"
end
