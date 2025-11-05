require "rails_helper"
RSpec.describe "Articles", type: :request do
  describe "記事の一覧を取得できた場合" do
    # binding.pry
    it "ステータスコード：200を返す" do
      get "/api/v1/articles"
      binding.pry
      expect(response).to have_http_status(200)
      binding.pry
    end
  end
end
