class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to new_contacts_path, notice: 'Contact was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end