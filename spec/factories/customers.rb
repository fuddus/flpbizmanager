# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    name "MyString"
    address1 "MyString"
    address2 "MyString"
    city "MyString"
    postcode "MyString"
    phone "MyString"
    email "MyString"
    mtdPurchases "9.99"
    ytdPurchases "9.99"
    country nil
  end
end
