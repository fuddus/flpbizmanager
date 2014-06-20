class Contact < ActiveRecord::Base
  belongs_to :customer

  def self.search(search_term)
  	if (search_term != nil)
  		#Contact.where('dateContacted >= ?', "%#{search_term}%")
  		Contact.all
  	else
    	Contact.all
  	end
  end

  def self.search_incomplete
  	#Contact.joins(:customer).where('completed = ? AND nextContact <= ?', "FALSE", Date.today)
    Contact.where('completed = ? AND next_contact <= ?', "FALSE", Date.today)
  end

end
