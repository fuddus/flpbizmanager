# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    name "MyString"
    mtdSalesQty 1
    ytdSalesQty 1
    mtdSalesValue "9.99"
    ytdSalesValue "9.99"
  end
end
