require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'articleモデルのテスト' do
	  context "articleが登録できること" do
	    it "有効なarticleの場合は保存されるか" do
	      expect(build(:article)).to be_valid
	    end
	  end

    context "空白のバリデーションチェック" do
      it "titleが空白の場合にエラーメッセージが返ってくるか" do
        article = build(:article, title: nil)
        article.valid?
        expect(article.errors[:title]).to include("を入力してください")
      end

    end

    context "文字数のバリデーションチェック" do
      it "titleの文字数が21文字以上の場合エラーメッセージが返ってくるか" do
        article = build(:article, title: "あいうえおあいうえおあいうえおあいうえおあ")
        article.valid?
        expect(article.errors[:title]).to include("は20文字以内で入力してください")
      end

      it "bodyの文字数が10文字以下の場合エラーメッセージが返ってくるか" do
        article = build(:article, body: "hoge")
        article.valid?
        expect(article.errors[:body]).to include("は10文字以上で入力してください")
      end
    end
  end
end
