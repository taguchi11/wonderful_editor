require "rails_helper"
RSpec.describe Comment, type: :model do
  let(:user) { create(:user) }
  let(:comment) { create(:comment) }
  describe "commentモデルのテスト" do
    context "コメントが空白の場合に" do
      let(:comment) { build(:comment, body: nil) }
      it "コメントができない" do
        expect(comment).not_to be_valid
        expect(comment.errors[:body]).to include("can't be blank")
      end
    end

    context "コメントが101文字以上の場合" do
      let(:comment) { build(:comment, body: "a" * 101) }
      it "コメントができない" do
        expect(comment).not_to be_valid
        expect(comment.errors[:body]).to include("is too long (maximum is 100 characters)")
      end
    end

    context "ユーザidが重複する場合" do
      let(:error_comment) { build(:comment, user_id: comment.user_id) }
      it "コメントができない" do
        expect(error_comment).not_to be_valid
        expect(error_comment.errors[:user_id]).to include("has already been taken")
      end
    end
  end
end
