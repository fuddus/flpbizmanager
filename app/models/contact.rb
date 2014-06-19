class Contact < ActiveRecord::Base
  belongs_to :customer

  def self.search(search_term)
  	if search_term
  		#Contact.where('dateContacted >= ?', "%#{search_term}%")
  		Contact.all
  	else
    	Contact.all
  	end
  end

end
