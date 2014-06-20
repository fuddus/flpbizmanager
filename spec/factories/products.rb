# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    sku "MyString"
    credits "9.99"
    retail_price "9.99"
    ndp_price "9.99"
    dist_price "9.99"
    mtdSalesQty 1
    ytdSalesQty 1
    mtdSalesQty "9.99"
    ytdSalesValue "9.99"
    category nil
  end
end
