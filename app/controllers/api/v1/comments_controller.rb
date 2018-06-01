class Api::V1::CommentsController < ApplicationController

  def create
    binding.pry
    user_id = current_user.id
    article = Article.find(params[:article_id])
    article.comments.create(body: params[:body], user_id: user_id)
  end

end
