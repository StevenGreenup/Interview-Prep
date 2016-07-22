Rails.application.routes.draw do

  root 'homepage#index'
  post 'users' => 'users#create', as: :create_user


  get "sign_in" => "sessions#new", as: :sign_in
  post "sign_in" => "sessions#create", as: :create_session
  delete "sign_in" => "sessions#delete"
end
