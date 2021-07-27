class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def show; end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)
    @article.save
    redirect_to articles_path
  end

  def edit; end

  def update
    # @article = Article.find(params[:id])
    @article.update
    redirect_to articles_path
  end

  def destroy
  end


  private

  def set_article
    @article = Article.find(params[:id])
  end

  def articles_params
    params.require(:article).permit(:title, :context)
  end

end
