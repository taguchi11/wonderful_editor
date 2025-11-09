module Api
  module V1
    class ArticlesController < BaseApiController
      def index
        articles = Article.all
        render json: articles, status: :ok
      end
    end
  end
end
