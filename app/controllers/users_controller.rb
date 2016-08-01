class UsersController < ApplicationController
  require 'cgi'
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
        @user.name = params[:user][:name]
        @user.email = params[:user][:email]
        @user.password = params[:user][:password]
        @user.password_confirmation = params[:user][:password_confirmation]
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(id: @user.id)
        else
          flash.now[:alert] = "Something went wrong. Try again."
            render :new
      end
  end

  def me
    show
    render :show
  end

  def show
    @resume = Resume.new
    @boss = Boss.new
    @descomp = Descomp.new
    @editresume = Resume.find_by user_id: params[:id]
    @resumes = Resume.where(user_id: @current_user.id)
    @descomps = Descomp.where(user_id: @current_user.id)
    @bosses = Boss.where(user_id: @current_user.id)

    if @resumes.first.nil?

    else
    getresume = Resume.where(user_id: @current_user.id).first
    @location = "#{getresume.addresscity}, #{getresume.addressstate} #{getresume.addresszip}"
    results = JSON.parse(Http.get("http://locationiq.org/v1/search.php?key=aadeb08b6efdd94689f7&format=json&q=#{CGI::escape(@location)}").body)
    puts "http://locationiq.org/v1/search.php?key=aadeb08b6efdd94689f7&format=json&q=#{CGI::escape(@location)}"
    @user_location = results.first

    lat = @user_location["lat"]
    lon = @user_location["lon"]


    url = "https://api.foursquare.com/v2/venues/search?query=cleaners&ll=#{lat},#{lon}&client_id=4RA4H2HEPK2RQ1VADM1UMPFYNIAKJ4NJ5HBAN5ZA1VFHUZHW&client_secret=ZI3DMKWHZDG2VAZNV2WH1JFZSJS2VMAQVARK0ZYJI0RSW2W0&v=20160714"

    json = JSON.parse(Http.get(url).body)

    @cleaners = json["response"]["venues"]
    end
  end


  def getstarted
    @resume = Resume.new
    @boss = Boss.new
    @descomp = Descomp.new

  end
end
