class ContactsController < ApplicationController

  def index
    @customer = Customer.find(params[:customer_id])
    @contacts = Contact.search(params[:search]).order(:contactedOn).page(params[:page])
  end

  def show
    @contact = @customer.contacts.find(params[:id])
  end

  def new
    @customer = Customer.find(params[:customer_id])
  	@contact = @customer.contacts.build
  end

  def create
    @customer = Customer.find(params[:customer_id])
  	#@contact = Contact.new(contact_params)
    @contact = @customer.contacts.build(params[:contact])
  	if @contact.save
  		redirect_to customer_contacts_path
  	else
  		render 'new'
  	end
  end

  def edit
    @customer = Customer.find(params[:customer_id])
    @contact = @customer.contacts.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:customer_id])
    @contact = @customer.contacts.find(params[:id])

    if @contact.update(contact_params)
      redirect_to customer_contacts_path
    else
      render 'edit'
    end
  end

  def destroy
    @customer = Customer.find(params[:customer_id])
    @contact = @customer.contacts.find(params[:id])
    @contact.destroy
    redirect_to contacts_path
  end

  private
    def contact_params
      params.require(:contact).permit(:contactedOn, :discussed, :nextContact, :customer_id)
    end

end
