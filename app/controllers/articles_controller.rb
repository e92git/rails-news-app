class ArticlesController < ApplicationController

  #before_action :control_user!, except: [:index, :show]

  def index
    @articles = Article.all

    #respond_to do |format|
    #  format.html {  }
    #  format.json { render json: @articles}
    #end
  end

  def subscribe
    @articles = Article.all

    render json: @articles
  end

  def show
    @article = Article.find(params[:id])
  end


  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.author = current_user

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :desc)
  end
end
