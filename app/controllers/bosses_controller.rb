class BossesController < ApplicationController
  require 'clearbit'

  before_action except: [] do
  if session[:user_id].nil?
    redirect_to sign_in_path, notice: "You must sign in!"
  end
end

  def new
    @boss = Boss.new
  end

def create
  Clearbit.key = 'sk_19ca8cb6727bdb3fa80e104abbe497c9'
  @boss = Boss.new
  @boss.email = params[:boss][:email]
   @boss.descomp_id = params[:boss][:descomp_id]
  response = Clearbit::Enrichment.find(email: @boss.email)


  @boss.user_id = @current_user.id
  unless response.nil?

  @boss.name = response.person.name.fullName

    unless response.person.twitter.nil?
      @boss.twitter = response.person.twitter.handle
      @boss.twitter_bio = response.person.twitter.bio
      @boss.twitter_followers = response.person.twitter.followers
      @boss.twitter_following = response.person.twitter.following
      @boss.twitter_site = response.person.twitter.site
      @boss.twitter_avatar = response.person.twitter.avatar
    end
      @boss.linked = response.person.linkedin.handle unless response.person.linkedin.nil?
      @boss.company = response.person.employment.name unless response.person.company.nil?
      @boss.gender = response.person.gender unless response.person.nil?
      @boss.location = response.person.location unless response.person.nil?
      @boss.facebook = response.person.facebook.handle unless response.person.facebook.nil?
    unless response.person.github.nil?
      @boss.github_handle = response.person.github.handle
      github = Github.new oauth_token: 'd084730c29f6fb328094cccbaa8f3d4e917b1796'
      repos = Github::Client::Repos.new

      response = repos.list user: "#{response.person.github.handle}"
      @clone = []
      count = []

      response.take(10).each do |r|
      langurl = r.languages_url
      @clone << r.clone_url

      count << JSON.parse(Http.get(langurl).body)
      end


      @lang = []
      count.each do |h|
        h.map do |k,v|
          @lang << {k => v}
        end
      end


     @derp = @lang.group_by{|h| h[0]}.map do |_,val|
          val.inject do |h1,h2|
            h1.merge(h2) do |k,o,n|
              k == 'name' ? o : o + n
            end
          end
      end


      @boss.clone = @clone
      @boss.langcount = @derp
      @boss.github_avatar = response.person.github.avatar
      @boss.github_company = response.person.github.company
      @boss.github_blog = response.person.github.blog
      @boss.github_followers = response.person.github.followers
      @boss.github_following = response.person.github.following
    end
      @boss.google = response.person.googleplus.handle unless response.person.googleplus.nil?
    unless response.person.angellist.nil?
      @boss.angellist = response.person.angellist.handle
      @boss.angel_bio = response.person.angellist.bio
      @boss.angel_blog = response.person.angellist.blog
      @boss.angel_avatar = response.person.angellist.avatar
    end
    unless response.person.aboutme.nil?
      @boss.about_handle = response.person.aboutme.handle
      @boss.about_bio = response.person.aboutme.bio
      @boss.about_avatar = response.person.aboutme.avatar
    end
    unless response.person.gravatar.nil?
      @boss.gravatar = response.person.gravatar.handle
      @boss.gravatar_avatar = response.person.gravatar.avatar
    end
  end
      if @boss.save
        redirect_to user_path(id: @current_user.id)
      else


    redirect_to root_path, notice: "Hiring manager could not be found"
    end
  end




def update
  @boss = Boss.find_by id: params[:id]
  @boss.twitter = params[:boss][:twitter]
  @boss.name = params[:boss][:name]
  @boss.gender = params[:boss][:gender]
  @boss.company = params[:boss][:company]
  @boss.linked = params[:boss][:linked]
  @boss.location = params[:boss][:location]
  @boss.facebook = params[:boss][:facebook]
  @boss.github_handle = params[:boss][:github_handle]
  @boss.google = params[:boss][:google]
  @boss.angellist = params[:boss][:angellist]
  @boss.about_handle = params[:boss][:about_handle]
  @boss.gravatar = params[:boss][:gravatar]
  @boss.gravatar_avatar = params[:boss][:gravatar_avatar]
  @boss.twitter_avatar = params[:boss][:twitter_avatar]
   @boss.save
    unless @boss.github_handle.nil?
   github = Github.new oauth_token: 'd084730c29f6fb328094cccbaa8f3d4e917b1796'
   repos = Github::Client::Repos.new

   response = repos.list user: "#{@boss.github_handle}"
   @clone = []
   count = []

   response.take(10).each do |r|
   langurl = r.languages_url
   @clone << r.clone_url

   count << JSON.parse(Http.get(langurl).body)
   end


   @lang = []
   count.each do |h|
     h.map do |k,v|
       @lang << {k => v}
     end
   end


  @derp = @lang.group_by{|h| h[0]}.map do |_,val|
       val.inject do |h1,h2|
         h1.merge(h2) do |k,o,n|
           k == 'name' ? o : o + n
         end
       end
   end


   @boss.clone = @clone

   @boss.langcount = @derp
   @boss.save
   end
    redirect_to user_path(id: @current_user.id)

  end



end
