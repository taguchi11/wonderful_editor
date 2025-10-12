require "rails_helper"
RSpec.describe User, type: :model do
  let(:user) { create(:user) }
  describe "userモデルのテスト" do
    context "名前が空白の場合に" do
      let(:user) { build(:user, name: nil) }
      it "ユーザーが作成できない" do
        expect(user).to_not be_valid
        expect(user.errors[:name]).to include("can't be blank")
      end
    end
    context "既に名前がある場合" do
      let(:error_user) { build(:user, name: user.name) }
      it "ユーザーが作成できない" do
        expect(error_user).to_not be_valid
        expect(error_user.errors[:name]).to include("has already been taken")
      end
    end
    context "名前が21文字以上の場合" do
      let(:error_user) { build(:user, name: "あいうえおあいうえおあいうえおあいうえおあ") }
       it "ユーザーが作成できない" do
        expect(error_user).to_not be_valid
        expect(error_user.errors[:name]).to include("is too long (maximum is 20 characters)")
       end
     end
  end
end
