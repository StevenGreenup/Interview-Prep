class LocationController < ApplicationController
  require 'cgi'



  def new
  end

  def locate
    @resume = Resume.where(user_id: @current_user.id)
    @location = @resume.address

    # turn this from a string into a lat/lng

    results = JSON.parse(Http.get("http://locationiq.org/v1/search.php?key=aadeb08b6efdd94689f7&format=json&q=#{CGI::escape(@location)}").body)

    @user_location = results.first

    


  end
end
