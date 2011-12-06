FactoryGirl.define do
  factory :id do
    name "Luiz Branco"
    association :degree
    association :university
  end
end
