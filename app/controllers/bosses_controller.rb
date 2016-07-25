class BossesController < ApplicationController
  require 'clearbit'

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
  if @boss.save
    redirect_to user_path(id: @current_user.id)
  else
    render :new
  end
  end
end
