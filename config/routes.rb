Rails.application.routes.draw do

  patch 'resumes/edit/:id' => "resumes#edit", as: :edit_resume
  post 'resumes' => 'resumes#create', as: :new_resume
  get 'resumes/:id.pdf' => 'resumes#show', as: :resume
  get 'resumes/:id' => 'resumes#show'
  get 'resumes/new' => 'resumes#new'


  patch 'company/:id' => 'descomps#update', as: :edit_company
  patch 'bosses/:id' => 'bosses#update', as: :edit_boss
  post 'companies' => 'descomps#create', as: :new_company
  post 'bosses' => 'bosses#create', as: :new_boss
  get 'bosses/new' => 'bosses#new'
  get 'companies/new' => 'descomps#new'
  get 'company/:id' => 'descomps#show', as: :company


  get 'twitter' => 'descomps#twitter'


  get 'resumes/update'
  get 'resumes/delete'

  root 'homepage#index'
  post 'users' => 'users#create', as: :create_user
  get 'users/:id' => 'users#show', as: :user
  # get 'users/:id' => 'users#getstarted', as: :user


  get "sign_in" => "sessions#new", as: :sign_in
  post "sign_in" => "sessions#create", as: :create_session
  delete "sign_in" => "sessions#delete"

  get 'contact' => 'contact#new', as: :contact
  post 'contact' => 'contact#create', as: :contact_me


end
