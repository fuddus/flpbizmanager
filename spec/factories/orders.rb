# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    orderDate "2014-06-11"
    ourRef "MyString"
    subtotal "9.99"
    delivery "9.99"
    discount "9.99"
    total "9.99"
    paid false
    deliveredInFull false
    customer nil
  end
end
