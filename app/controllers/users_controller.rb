class UsersController < ApplicationController

  before_action except: [:create] do
  if session[:user_id].nil?
    redirect_to sign_in_path, notice: "You must sign in!"
  end
end



    def new
        @user = User.new
    end

    def create
        @user = User.new
        @resume = Resume.new

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
    @boss = Boss.new
    @descomp = Descomp.new
    @editresume = Resume.find_by user_id: params[:id]
    @resumes = Resume.where(user_id: @current_user.id)
    @descomps = Descomp.where(user_id: @current_user.id)
    @bosses = Boss.where(user_id: @current_user.id)

  end

  def getstarted
    @resume = Resume.new
    @boss = Boss.new
    @descomp = Descomp.new
    @editresume = Resume.find_by user_id: params[:id]
    @resumes = Resume.where(user_id: @current_user.id)
    @descomps = Descomp.where(user_id: @current_user.id)
    @bosses = Boss.where(user_id: @current_user.id)
  end


end
