# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_item do
    sku "MyString"
    description "MyString"
    retail "9.99"
    cost "9.99"
    credits "9.99"
    profit "9.99"
    delivered false
    order nil
  end
end
