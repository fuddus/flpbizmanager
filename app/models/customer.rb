class Customer < ActiveRecord::Base
  belongs_to :country
  has_many :orders
  has_many :contacts

  def self.search(search_term)
  	if search_term
  		Customer.where('name ILIKE ? OR email ILIKE ? OR phone ILIKE ?', "%#{search_term}%", "%#{search_term}%", "%#{search_term}%")
  	else
    	Customer.all
  	end
  end

end
