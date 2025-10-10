FactoryBot.define do
  factory :user do
    # binding.pry
    name { Faker::Lorem.characters(number: 20) } # 名前のようなダミーデータの生成
    email { Faker::Internet.email } # メールアドレスのようなダミーデータの生成
    password { Faker::Internet.password } # メールアドレスのようなダミーデータの生成
    # binding.pry
  end
end
