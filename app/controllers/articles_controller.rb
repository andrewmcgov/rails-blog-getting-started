# Controllers are classes that enherit from ApplicationController
# In here we will 
class ArticlesController < ApplicationController
  # These are specific actions for the Articles controller
  def index
    @articles = Article.all
  end
  
  def show
    # Rails passes all instance variables prefixed with @ to the view
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    # Here we are referencing the Article class defined in app/models/article.rb
    #  article is 
    @article = Article.new(article_params)
 
    @article.save
    redirect_to @article
  end

  private
    def article_params
      # Tell rails which params are allowed for methods in this controller
      params.require(:article).permit(:title, :text)
    end
end
