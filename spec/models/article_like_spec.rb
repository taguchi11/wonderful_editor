RSpec.describe ArticleLike, type: :model do
  let(:user) { create(:user) }
  let(:article) { create(:article) }
  let(:article_like) { create(:article_like) }
  describe "article_likeモデルのテスト" do
    context "ユーザが同じ記事にいいねをする場合" do
      let(:error_article_like) { build(:article_like, user_id: article_like.user_id) }
      it "いいねが保存できない" do
        expect(error_article_like).not_to be_valid
        expect(error_article_like.errors[:user_id]).to include("has already been taken")
      end
    end
  end
end
