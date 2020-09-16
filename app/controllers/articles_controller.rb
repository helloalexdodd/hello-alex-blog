class ArticlesController < ApplicationController
  def show
    # the @ turns this variable into an instance variable, making it accessible outside of the show method
    @article = Article.find(params[:id])
  end
  def index
    @articles = Article.all
  end
  def new

  end
  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    redirect_to @article
  end
end