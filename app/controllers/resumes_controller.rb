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

    @resume.addresscity = params[:resume][:addresscity]
    @resume.addressstate = params[:resume][:addressstate]
    @resume.addresszip = params[:resume][:addresszip]
    @resume.website = params[:resume][:website]
    @resume.linked = params[:resume][:linked]

    @resume.expos11about = params[:resume][:expos11about]
    @resume.expos12about = params[:resume][:expos12about]
    @resume.expos13about = params[:resume][:expos13about]
    @resume.expos14about = params[:resume][:expos14about]
    @resume.expos15about = params[:resume][:expos15about]

    @resume.expos21about = params[:resume][:expos21about]
    @resume.expos22about = params[:resume][:expos22about]
    @resume.expos23about = params[:resume][:expos23about]
    @resume.expos24about = params[:resume][:expos24about]
    @resume.expos25about = params[:resume][:expos25about]

    @resume.expos31about = params[:resume][:expos31about]
    @resume.expos32about = params[:resume][:expos32about]
    @resume.expos33about = params[:resume][:expos33about]
    @resume.expos34about = params[:resume][:expos34about]
    @resume.expos35about = params[:resume][:expos35about]

    @resume.intcomp11about = params[:resume][:intcomp11about]
    @resume.intcomp12about = params[:resume][:intcomp12about]
    @resume.intcomp13about = params[:resume][:intcomp13about]
    @resume.intcomp14about = params[:resume][:intcomp14about]
    @resume.intcomp15about = params[:resume][:intcomp15about]

    @resume.intcomp21about = params[:resume][:intcomp21about]
    @resume.intcomp22about = params[:resume][:intcomp22about]
    @resume.intcomp23about = params[:resume][:intcomp23about]
    @resume.intcomp24about = params[:resume][:intcomp24about]
    @resume.intcomp25about = params[:resume][:intcomp25about]

    @resume.intcomp31about = params[:resume][:intcomp31about]
    @resume.intcomp32about = params[:resume][:intcomp32about]
    @resume.intcomp33about = params[:resume][:intcomp33about]
    @resume.intcomp34about = params[:resume][:intcomp34about]
    @resume.intcomp35about = params[:resume][:intcomp35about]

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
    @resume = Resume.find_by user_id: params[:id]
    @resume.user_id = @current_user.id
    @resume.address = params[:resume][:address]
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

    @resume.addresscity = params[:resume][:addresscity]
    @resume.addressstate = params[:resume][:addressstate]
    @resume.addresszip = params[:resume][:addresszip]
    @resume.website = params[:resume][:website]
    @resume.linked = params[:resume][:linked]

    @resume.expos11about = params[:resume][:expos11about]
    @resume.expos12about = params[:resume][:expos12about]
    @resume.expos13about = params[:resume][:expos13about]
    @resume.expos14about = params[:resume][:expos14about]
    @resume.expos15about = params[:resume][:expos15about]

    @resume.expos21about = params[:resume][:expos21about]
    @resume.expos22about = params[:resume][:expos22about]
    @resume.expos23about = params[:resume][:expos23about]
    @resume.expos24about = params[:resume][:expos24about]
    @resume.expos25about = params[:resume][:expos25about]

    @resume.expos31about = params[:resume][:expos31about]
    @resume.expos32about = params[:resume][:expos32about]
    @resume.expos33about = params[:resume][:expos33about]
    @resume.expos34about = params[:resume][:expos34about]
    @resume.expos35about = params[:resume][:expos35about]

    @resume.intcomp11about = params[:resume][:intcomp11about]
    @resume.intcomp12about = params[:resume][:intcomp12about]
    @resume.intcomp13about = params[:resume][:intcomp13about]
    @resume.intcomp14about = params[:resume][:intcomp14about]
    @resume.intcomp15about = params[:resume][:intcomp15about]

    @resume.intcomp21about = params[:resume][:intcomp21about]
    @resume.intcomp22about = params[:resume][:intcomp22about]
    @resume.intcomp23about = params[:resume][:intcomp23about]
    @resume.intcomp24about = params[:resume][:intcomp24about]
    @resume.intcomp25about = params[:resume][:intcomp25about]

    @resume.intcomp31about = params[:resume][:intcomp31about]
    @resume.intcomp32about = params[:resume][:intcomp32about]
    @resume.intcomp33about = params[:resume][:intcomp33about]
    @resume.intcomp34about = params[:resume][:intcomp34about]
    @resume.intcomp35about = params[:resume][:intcomp35about]
    if @resume.save
      redirect_to user_path(id: @current_user.id)
    else
      render :new
    end
  end

  def update
  end

  def delete
  end
end
