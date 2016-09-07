class ContactsController < ApplicationController
	def index
		@contacts = Contact.order("name ASC")
		render "index"
	end

	def new
		render "new"
	end

	def create
    	contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone_number => params[:contact][:phone_number],
      :email_address => params[:contact][:email_address])

    # Now we save the contact
    	contact.save

    	redirect_to "/contacts"
  	end
end
