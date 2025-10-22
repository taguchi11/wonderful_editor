require "rails_helper"
RSpec.describe Article, type: :model do
  let(:article) { create(:article) }
  describe "articleモデルのテスト" do
    context "タイトルが空白の場合に" do
      let(:article) { build(:article, title: nil) }
      it "記事が作成できない" do
        expect(article).not_to be_valid
        expect(article.errors[:title]).to include("can't be blank")
      end
    end

    context "本文が空白の場合に" do
      let(:article) { build(:article, body: nil) }
      it "記事が作成できない" do
        expect(article).not_to be_valid
      end
    end

    context "タイトルが21文字以上になった場合" do
      article = FactoryBot.build(:article, title: "a" * 21) # FactoryBotからarticleを生成
      it "記事が作成できない" do
        expect(article).not_to be_valid
        expect(article.title.length).to eq(21)
      end
    end

    context "本文が167文字以上になった場合" do
      let(:article) { build(:article, body: "a" * 167) }
      it "記事が作成できない" do
        expect(article).not_to be_valid
        expect(article.body.length).to eq(167)
      end
    end
  end
end
