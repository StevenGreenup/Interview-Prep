class DescompsController < ApplicationController
  require 'clearbit'
  require 'twitter'
  def new
    @boss = Boss.new
  end


 def create
   Clearbit.key = 'sk_19ca8cb6727bdb3fa80e104abbe497c9'
   @descomp = Descomp.new
   @descomp.company = params[:descomp][:company]
   @descomp.url = params[:descomp][:url]
   @descomp.boss_id = params[:descomp][:boss_id]
   @descomp.user_id = @current_user.id

  company = Clearbit::Enrichment::Company.find(domain: @descomp.url, company_name: @descomp.company)
  @descomp.tag = company.site.h1
  @descomp.desc = company.site.metaDescription
  @descomp.phone = company.site.phoneNumbers
  @descomp.email = company.site.emailAddresses
  @descomp.sector = company.category.sector
  @descomp.industrygroup = company.category.industryGroup
  @descomp.industry = company.category.industry
  @descomp.subindustry = company.category.subIndustry
  @descomp.tags = company.tags
  @descomp.description = company.description
  @descomp.founded = company.foundedYear
  @descomp.address = company.location
  @descomp.logo = company.logo
  @descomp.facebook = company.facebook.handle
  @descomp.linked = company.linkedin.handle
  @descomp.twitter = company.twitter.handle
  @descomp.twitbio = company.twitter.bio
  @descomp.followers = company.twitter.followers
  @descomp.following = company.twitter.following
  @descomp.twitlocate = company.twitter.location
  @descomp.twitsite = company.twitter.site
  @descomp.avatar = company.twitter.avatar
  if @descomp.save
    redirect_to user_path(id: @current_user.id)
  else
    render :new
  end
 end

def twitter
     client = Twitter::REST::Client.new do |config|
       config.consumer_key = 'bj1mCgHVtRNBdl3O8PQZSaEm4'
       config.consumer_secret = 'bM0KvFA2LmAuGYQoKvLEJmjGWhXcSZXOzMrECT5NtegPfPYbV1'
       config.access_token = '3140458521-khcyswB6LhghdoikJtjRdD3JW4kYxJvhm50S2Yy'
       config.access_token_secret = 'qQHHo02X5K5YcJLC0hFmIrAaduiAJxRsHZtnzDrnqE3CD'
     end

   @twitter = client.user_timeline("BurnsMcDonnell")
end

def glassdoor
  # http://api.glassdoor.com/api/api.htm?v=1&format=json&t.p=81085&t.k=bh25srPSqNc&action=employers&q=Burns-and-McDonnell&userip=192.168.43.42&useragent=Mozilla/%2F4.0
  # Partner ID:	81085
  # Key:	bh25srPSqNc
end



 def show
   @descomp = Descomp.find_by id: params[:id]
 end





 end
