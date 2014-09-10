class ContactsController < ApplicationController
 def new
 	@contact = Contact.new
 end

 def create
 	if @contact.valid?
 		@contact.save
 	end
 	flash[:notice] = "Message sent from #{@contact.name}."
 	redirect_to root_path
 end

 private

 def secure_params
 	params.require(:contact).permit(:name, :email, :content)
 end

end
