# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    contactedOn "2014-06-11"
    discussed "MyText"
    nextContact "2014-06-11"
    customer nil
  end
end
