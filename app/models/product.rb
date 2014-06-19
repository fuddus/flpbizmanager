class Product < ActiveRecord::Base
  belongs_to :category

  def self.search(search_term)
  	if search_term
  		Product.where('product_name ILIKE ? OR description ILIKE ? OR sku ILIKE ?', "%#{search_term}%", "%#{search_term}%", "%#{search_term}%")
  	else
    	Product.all
  	end
  end
end
