FactoryGirl.define do
  factory :id do
    name "Luiz Branco"
    email "artfikan@gmail.com"
    association :degree
    association :university
  end
end
