class ContactController < ApplicationController

  def new
    @contact = Contact.new
  end
  def create
      @contact = Contact.new
      @contact.subject = params[:contact][:subject]
      @contact.phone = params[:contact][:phone]
      @contact.email = params[:contact][:email]
      @contact.message = params[:contact][:message]
      @contact.yourname = params[:contact][:yourname]

      if @contact.save
          redirect_to root_path
      else
        flash.now[:alert] = "Something went wrong. Try again."
          render :new
    end
end
end
