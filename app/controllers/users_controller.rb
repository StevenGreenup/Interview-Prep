class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new
        @user.name = params[:user][:name]
        @user.email = params[:user][:email]
        @user.password = params[:user][:password]
        @user.password_confirmation = params[:user][:password_confirmation]
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(id: @user.id)
        else
            render :new
      end
  end
  def show
    @resume = Resume.new
    @resumes = Resume.where(user_id: @current_user.id)
    @boss = Boss.new
    @descomp = Descomp.new
  end
end
