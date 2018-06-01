class ArticlesController < ApplicationController
  before_action :require_current_user

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    user = current_user
    title = params[:article][:title]
    body = params[:article][:body]
    article = user.articles.create(title: title, body: body)

    redirect_to user_path(current_user)
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

end
