class ArticlesController < ApplicationController


  def index
    if params[:tag]
      @articles = Article.tagged_with(params[:tag])
    else
      @articles = Article.all
    end
  end

  def show
     @article = Article.find(params[:id])
  end


  private

  def article_params
    params.require(:article).permit(:title, :text, :all_tags)
  end
end
