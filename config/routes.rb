Rails.application.routes.draw do
  resources :inquires
  post '/send_text' , to: 'inquires#send_mail', as: '/send_text'
  get 'form/index'
  devise_for :users
  get 'health/index'
  root to: "home#index"
  get 'articles/index'
  
  resources :form
  
  resources :logins
  resources :home do
  
end
  resources :articles do
  resources :comments
end

  #api
  namespace :api do 
    resources :articles, only: [:index, :show]
  end 
end