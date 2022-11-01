class ArticlesController < ApplicationController

	def index
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end
	
	def create
		@article = Article.new(article_params)

		if @article.save
	      redirect_to @article
	    else
	      render :new, status: :unprocessable_entity
	    end
	end
	
	def update
	end
	
	def destroy
	end

	def services
	end

	def faq
	end
	
	def gallery
		@articles = Article.all
	end
	
	def about
	end

	private

	def article_params
		params.require(:article).permit(:name, :email, :mobile, :company, :massage)
	end

end
