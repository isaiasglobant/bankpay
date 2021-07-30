FactoryBot.define do
  factory :rider do
    name { "John" }
    email  { "jhon@example.com" }
    payment_source_id  { 15016 }
  end
end
