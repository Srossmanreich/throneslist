get '/categories/:id/articles/new' do
  @categories = Category.all
  @id = params[:id]
  @house = @categories.find(@id)
  erb :"articles/new"
end

post '/categories/:id/articles' do
  @categories = Category.all
  @id = params[:id]
  @house = @categories.find(@id)

  @title = params[:textarea1]
  @body = params[:textarea2]
  @price = params[:textarea3]
  @email = params[:textarea4]

  @new = Article.create(title: @title, description: @body, price: @price, email: @email)

  @house.articles << @new

  erb :"articles/show"
end

get '/articles/:string' do
  @articles = Article.all

  p "Below is @articles"
  p @articles

  @string = params[:string]

  p "Below is @string"
  p @string

  @article = @articles.find_by(random_string: @string)

  p "Below is @article"
  p @article

  @categories = Category.all
  @house = @categories.find(@article.category_id)

  erb :"articles/edit"
end

post '/articles/:string/edit' do
  @articles = Article.all
  @string = params[:string]
  @article = @articles.find_by(random_string: @string)

  @article.title = params[:textarea1]
  @article.description = params[:textarea2]
  @article.price = params[:textarea3]
  @article.email = params[:textarea4]

  @article.save

  @id = @article.category_id

  redirect "/categories/#{@id}"

end

delete '/articles/:string' do

  @articles = Article.all
  @string = params[:string]
  @article = @articles.find_by(random_string: @string)

  @id = @article.category_id

  @article.destroy

  redirect "/categories/#{@id}"

end

