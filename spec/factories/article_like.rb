FactoryBot.define do
  factory :article_like do
    association :article # articleモデルとの関連付け
    association :user # Userモデルとの関連付け
  end
end
