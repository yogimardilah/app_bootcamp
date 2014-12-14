class ArticlesController < ApplicationController
	def index
		@articles = Article.latest
	end


	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to :back
	end

	def edit
	@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		@article.update(article_params)
		@article.save
		redirect_to :back
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to :back
	end

	private
	def article_params
		params.require(:article).permit(:title, :description, :status, :categori)

	end
end