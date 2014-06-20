class ContactsController < ApplicationController

  def index
    @customer = Customer.find(params[:customer_id])
    @contacts = @customer.contacts.search(params[:search]).order(completed: :asc).page(params[:page])
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    session[:return_to] ||= request.referer
    @customer = Customer.find(params[:customer_id])
  	@contact = @customer.contacts.build
  end

  def create
    @customer = Customer.find(params[:customer_id])
    @contact = @customer.contacts.create(contact_params)
  	if @contact.save
      redirect_to session.delete(:return_to)
  	else
  		render 'new'
  	end
  end

  def edit
    session[:return_to] ||= request.referer
    @customer = Customer.find(params[:customer_id])
    @contact = @customer.contacts.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:customer_id])
    @contact = @customer.contacts.find(params[:id])

    if @contact.update(contact_params)
      redirect_to session.delete(:return_to)
    else
      render 'edit'
    end
  end

  def destroy
    @customer = Customer.find(params[:customer_id])
    @contact = @customer.contacts.find(params[:id])
    @contact.destroy
    redirect_to customer_contacts_path
  end

  def mark_as_completed
    session[:return_to] ||= request.referer
    @customer = Customer.find(params[:customer_id])
    @contact = @customer.contacts.find(params[:contact_id])
    @contact.completed = "TRUE"
    if (@contact.save)
      #render 'new', notice: "Successfully marked as completed."
      redirect_to action: 'new', notice: "Successfully marked as complete.!"
    else
      redirect_to session.delete(:return_to), alert: "Something went wrong!"
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:contacted_on, :discussed, :next_contact, :completed, :customer_id)
    end

end
