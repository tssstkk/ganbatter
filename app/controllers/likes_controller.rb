class LikesController < ApplicationController

  def show
    article = Article.find(params[:article_id])
    likes_count = article.likes.count
    render json: { LikesCount: likes_count }
  end

  def create
    article = Article.find(params[:article_id])
    @likes = article.likes.create!
    render json: { status: 'OK' }
  end
end
