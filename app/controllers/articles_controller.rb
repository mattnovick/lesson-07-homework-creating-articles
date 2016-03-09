class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit          
    @article = Article.find(params[:id])   
  end

  def create
    puts "Creating article..."
    @article = Article.create(article_params)
    redirect_to articles_path
  end

  private
  
  def article_params     
  # using strong params to only permit the attributes (fields) that we explicitly allow     
  params.require(:article).permit(:title, :body)   
  end
end