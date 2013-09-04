FactoryGirl.define do
  factory :tweet do
    sequence :text do |n|
      "This is tuitt number #{n}"
    end
  end
end