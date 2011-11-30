FactoryGirl.define do
  factory :course do
    code "CS-5612"
    name "Modern Society"
    association :degree
  end
end
