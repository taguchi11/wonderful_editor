require "rails_helper"
RSpec.describe "Articles", type: :request do
  describe "記事の一覧を取得できた場合" do
    it "ステータスコード：200を返す" do
      get "/api/v1/articles"
      expect(response).to have_http_status(200)
    end
  end
end
