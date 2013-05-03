require_dependency "contact_page/application_controller"

module ContactPage
  class ContactMessagesController < ApplicationController
    def index
    	if request.post?
    		@contact_message = ContactMessage.new(params[:contact_message])
		    respond_to do |format|
		      if @contact_message.save
		        format.html { redirect_to root_path, notice: 'Tu mensaje ha sido enviado, gracias.' }
		        format.json { render json: @contact_message, status: :created, location: @contact_message }
		      else
		        format.html { render action: "index" }
		        format.json { render json: @contact_message.errors, status: :unprocessable_entity }
		      end
		    end
    	else
    		@contact_message = ContactMessage.new
    		respond_to do |format|
		      format.html # new.html.erb
		      format.json { render json: @contact_message }
		    end
    	end
    end
  end
end
