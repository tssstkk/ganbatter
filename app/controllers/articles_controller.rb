class ArticlesController < ApplicationController
  before_action :set_articles, only: [:index, :show, :archives]
  before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

  def index
    @article  = @articles.first
    if @article
      @comments = @article.comments
      @comment  = Comment.new
      @likes = @article.likes_count
    end
  end

  def show
    @article  = @articles.find(params[:id])
    @comments = @article.comments
    @comment = Comment.new
    @likes = @article.likes_count
    render :index
  end

  def new
    @article  = current_user.articles.build
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      flash[:success] = 'よし！目標を作成できた！頑張ろう！'
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
    @article = current_user.articles.find(params[:id])
  end

  def update
    @article = current_user.articles.find(params[:id])
    if @article.update(article_params)
      flash[:success] = 'いいね！目標を改善した！頑張れる気がする！'
      redirect_to root_url
    else
      render :edit
    end
  end

  def destroy
    current_user.articles.find(params[:id]).destroy
    flash[:success] = '削除してしまった、、次頑張ろう！'
    redirect_to root_url
  end

  def archives
    @articles = Article.all.order(updated_at: :desc).paginate(page: params[:page])
  end

  private

    def article_params
      params.require(:article).permit(:title, :content)
    end

    def set_articles
      @articles = Article.all.order(updated_at: :desc).paginate(page: params[:page])
    end
end
