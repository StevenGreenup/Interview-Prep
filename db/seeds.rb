# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def create_user
  user = User.new
  user.name = 'Bob Lawblah'
  user.email = 'bob@lawblah.com'
  user.password = '12345678'
  user.save!
  user
end

def create_boss(email)
  require 'clearbit'

  Clearbit.key = 'sk_19ca8cb6727bdb3fa80e104abbe497c9'
  boss = Boss.new
  # boss.email = 'brian.dorton@theironyard.com'
  boss.user_id = User.all.sample
  response = Clearbit::Enrichment.find(email: email)
    boss.name = response.person.name.fullName
unless response.person.twitter.nil?
    boss.twitter = response.person.twitter.handle
    boss.twitter_bio = response.person.twitter.bio
    boss.twitter_followers = response.person.twitter.followers
    boss.twitter_following = response.person.twitter.following
    boss.twitter_site = response.person.twitter.site
    boss.twitter_avatar = response.person.twitter.avatar
  end
    boss.linked = response.person.linkedin.handle unless response.person.linkedin.nil?
    boss.company = response.person.employment.name unless response.person.company.nil?
    boss.gender = response.person.gender unless response.person.nil?
    boss.location = response.person.location unless response.person.nil?
    boss.facebook = response.person.facebook.handle unless response.person.facebook.nil?
  unless response.person.github.nil?
    boss.github_handle = response.person.github.handle
    boss.github_avatar = response.person.github.avatar
    boss.github_company = response.person.github.company
    boss.github_blog = response.person.github.blog
    boss.github_followers = response.person.github.followers
    boss.github_following = response.person.github.following
  end
    boss.google = response.person.googleplus.handle unless response.person.googleplus.nil?
  unless response.person.angellist.nil?
    boss.angellist = response.person.angellist.handle
    boss.angel_bio = response.person.angellist.bio
    boss.angel_blog = response.person.angellist.blog
    boss.angel_avatar = response.person.angellist.avatar
  end
  unless response.person.aboutme.nil?
    boss.about_handle = response.person.aboutme.handle
    boss.about_bio = response.person.aboutme.bio
    boss.about_avatar = response.person.aboutme.avatar
  end
  unless response.person.gravatar.nil?
    boss.gravatar = response.person.gravatar.handle
    # boss.valve = response.person.gravatar.urls.valve
    boss.gravatar_avatar = response.person.gravatar.avatar
  end
  boss.save!
end

create_user

test_emails = ["dorton@gmail.com", "brian.dorton@theironyard.com"]

test_emails.each do |email|
  create_boss(email)
end
