Rails.application.routes.draw do
  
  root to: 'home#index'
  
  devise_for :users
  
  resources :profil, only: [:show, :edit, :update]
  resources :contents
  resources :content_in_lists, only: [:show, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
