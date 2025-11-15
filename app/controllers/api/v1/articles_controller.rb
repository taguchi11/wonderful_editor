module Api
  module V1
    class ArticlesController < BaseApiController
      def index
        articles = Article.all
        render json: articles, status: :ok
      end

      def show
        article = Article.new(@article)
        render json: article, status: :ok
      end

      private

        def set_article
          binding.pry
          @article = Article.find(params[:id])
          binding.pry
        end

    end
  end
end
