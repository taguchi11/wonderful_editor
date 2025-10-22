FactoryBot.define do
  factory :article do
    association :user # Userモデルとの関連付け
    title { Faker::Lorem.characters(number: 20) }
    body { Faker::Lorem.characters(number: 100) }
  end
end
