FactoryBot.define do
  factory :comment do
    association :article # articleモデルとの関連付け
    association :user # Userモデルとの関連付け
    body { Faker::Lorem.characters(number: 100) }
  end
end
