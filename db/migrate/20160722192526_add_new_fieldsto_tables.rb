class AddNewFieldstoTables < ActiveRecord::Migration[5.0]
  def change
    add_column :bosses, :name, :string
    add_column :bosses, :twitter_bio, :string
    add_column :bosses, :twitter_followers, :string
    add_column :bosses, :twitter_following, :string
    add_column :bosses, :twitter_site, :string
    add_column :bosses, :twitter_avatar, :string
    add_column :bosses, :company, :string
    add_column :bosses, :gender, :string
    add_column :bosses, :location, :string
    add_column :bosses, :facebook, :string
    add_column :bosses, :github_handle, :string
    add_column :bosses, :github_avatar, :string
    add_column :bosses, :github_company, :string
    add_column :bosses, :github_blog, :string
    add_column :bosses, :github_followers, :string
    add_column :bosses, :github_following, :string
    add_column :bosses, :google, :string
    add_column :bosses, :angellist, :string
    add_column :bosses, :angel_bio, :string
    add_column :bosses, :angel_blog, :string
    add_column :bosses, :angel_avatar, :string
    add_column :bosses, :about_handle, :string
    add_column :bosses, :about_bio, :string
    add_column :bosses, :about_avatar, :string
    add_column :bosses, :gravatar, :string
    add_column :bosses, :valve, :string
    add_column :bosses, :gravatar_avatar, :string


    add_column :descomps, :tag, :string
    add_column :descomps, :desc, :string
    add_column :descomps, :phone, :string
    add_column :descomps, :email, :string
    add_column :descomps, :sector, :string
    add_column :descomps, :industrygroup, :string
    add_column :descomps, :industry, :string
    add_column :descomps, :subindustry, :string
    add_column :descomps, :tags, :string
    add_column :descomps, :description, :string
    add_column :descomps, :founded, :string
    add_column :descomps, :address, :string
    add_column :descomps, :logo, :string
    add_column :descomps, :facebook, :string
    add_column :descomps, :twitbio, :string
    add_column :descomps, :followers, :string
    add_column :descomps, :following, :string
    add_column :descomps, :twitlocate, :string
    add_column :descomps, :twitsite, :string
    add_column :descomps, :avatar, :string
  end
end
