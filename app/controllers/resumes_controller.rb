class ResumesController < ApplicationController

  before_action except: [] do
  if session[:user_id].nil?
    redirect_to sign_in_path, notice: "You must sign in!"
  end
end

  def new
  end

  def create
    @resume = Resume.new
    @resume.user_id = @current_user.id
    @resume.address = params[:resume][:address]
    @resume.phone = params[:resume][:phone]
    @resume.phone = params[:resume][:phone]
    @resume.school1 = params[:resume][:school1]
    @resume.school2 = params[:resume][:school2]
    @resume.school3 = params[:resume][:school3]
    @resume.cdd1 = params[:resume][:cdd1]
    @resume.cdd2 = params[:resume][:cdd2]
    @resume.cdd3 = params[:resume][:cdd3]
    @resume.excomp1 = params[:resume][:excomp1]
    @resume.excomp2 = params[:resume][:excomp2]
    @resume.excomp3 = params[:resume][:excomp3]
    @resume.expos1 = params[:resume][:expos1]
    @resume.expos2 = params[:resume][:expos2]
    @resume.expos3 = params[:resume][:expos3]
    @resume.exstart1 = params[:resume][:exstart1]
    @resume.exstart2 = params[:resume][:exstart2]
    @resume.exstart3 = params[:resume][:exstart3]
    @resume.exend1 = params[:resume][:exend1]
    @resume.exend2 = params[:resume][:exend2]
    @resume.exend3 = params[:resume][:exend3]
    @resume.intcom1 = params[:resume][:intcom1]
    @resume.intcomp2 = params[:resume][:intcomp2]
    @resume.intcomp3 = params[:resume][:intcomp3]
    @resume.intpos1 = params[:resume][:intpos1]
    @resume.intpos2 = params[:resume][:intpos2]
    @resume.intpos3 = params[:resume][:intpos3]
    @resume.intstart1 = params[:resume][:intstart1]
    @resume.intstart2 = params[:resume][:intstart2]
    @resume.intstart3 = params[:resume][:intstart3]
    @resume.intend1 = params[:resume][:intend1]
    @resume.intend2 = params[:resume][:intend2]
    @resume.intend3 = params[:resume][:intend3]
    @resume.cert1 = params[:resume][:cert1]
    @resume.cert2 = params[:resume][:cert2]
    @resume.cert3 = params[:resume][:cert3]
    if @resume.save
      redirect_to user_path(id: @current_user.id)
    else
      render :new
    end
  end

  def show
    respond_to do |format|
      @resume = Resume.find_by id: params[:id]
      format.html
      format.pdf do
        render pdf: "file_name"   # Excluding ".pdf" extension.
      end
    end


  end

  def edit
  end

  def update
  end

  def delete
  end
end
