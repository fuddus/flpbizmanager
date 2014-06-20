class HomeController < ApplicationController

  def index
    @contacts = Contact.search_incomplete.order(next_contact: :desc).page(params[:page])
  end

end
