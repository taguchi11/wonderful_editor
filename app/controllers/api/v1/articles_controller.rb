module Api
  module V1
    class ArticlesController < BaseApiController
      before_action :set_article, only: :show

      def index
        articles = Article.all
        render json: articles, status: :ok
      end

      def show
        render json: @article, status: :ok
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
