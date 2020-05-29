class ArticlesController < ApplicationController
  #Todo: before_action

  def index
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
