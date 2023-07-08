class ArticlesController < ApplicationController
    def index
        @articles = Article.all

        @ramdom_article = Article.order("RANDOM()").first

        render :index
    end

    def new
        @article = Article.new
    end

    def show
        @article = Article.find(params[:id])
    end

    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to articles_path
        else
            render :new, status: 422
        end
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            redirect_to articles_path(@article)
        end

    end

    def delete
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
      end
      

    def article_params
        params.require(:article).permit(:name, :body)
    end


end
