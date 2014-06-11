# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    sku "MyString"
    credits "9.99"
    retailPrice "9.99"
    ndpPrice "9.99"
    distPrice "9.99"
    mtdSalesQty 1
    ytdSalesQty 1
    mtdSalesQty "9.99"
    ytdSalesValue "9.99"
    category nil
  end
end
