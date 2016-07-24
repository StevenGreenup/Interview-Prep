Rails.application.routes.draw do

  post 'resumes' => 'resumes#create', as: :new_resume
  get 'resumes/:id.pdf' => 'resumes#show', as: :resume
  get 'resumes/:id' => 'resumes#show'
  get 'resumes/new' => 'resumes#new'

  post 'companies' => 'descomps#create', as: :new_company
  post 'bosses' => 'bosses#create', as: :new_boss
  get 'bosses/new' => 'bosses#new'
  get 'companies/new' => 'descomps#new'
  get 'company/:id' => 'descomps#show', as: :company

  get 'twitter' => 'descomps#twitter'

  get 'resumes/edit'
  get 'resumes/update'
  get 'resumes/delete'

  root 'homepage#index'
  post 'users' => 'users#create', as: :create_user
  get 'users/:id' => 'users#show', as: :user


  get "sign_in" => "sessions#new", as: :sign_in
  post "sign_in" => "sessions#create", as: :create_session
  delete "sign_in" => "sessions#delete"
end
