class Customer < ActiveRecord::Base
  belongs_to :country
  has_many :orders
  has_many :contacts
end
