FactoryGirl.define do
  factory :comment do
    sequence(:body) {|n| "comment body #{n}" }
  end
end