FactoryBot.define do
  factory :plan do
    name { "MyString" }
    price_cents { 1 }
    interval { "MyString" }
    features { "" }
    order { 1 }
  end
end
