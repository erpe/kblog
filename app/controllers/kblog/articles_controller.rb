require_dependency "kblog/application_controller"

module Kblog
  class ArticlesController < ApplicationController
    before_filter :set_article, only: [:show, :edit, :update, :destroy]

    # GET /articles
    def index
      @articles = Article.order("created_at DESC").paginate(:page => params[:page], :per_page => 3)
    end

    # GET /articles/1
    def show
    end

    # GET /articles/new
    def new
      @article = Article.new
    end

    # GET /articles/1/edit
    def edit
    end

    # POST /articles
    def create
      @article = Article.new(article_params)

      if @article.save
        redirect_to @article, notice: 'Article was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /articles/1
    def update
      if @article.update_attributes(article_params)
        redirect_to @article, notice: 'Article was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /articles/1
    def destroy
      @article.destroy
      redirect_to articles_url, notice: 'Article was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_article
        @article = Article.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def article_params
			params[:article]
        #params.require(:article).permit(:title, :content)
      end
  end
end
