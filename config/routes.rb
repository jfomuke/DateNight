Rails.application.routes.draw do
  get 'date_night/generate'
  
  resources :activity
  resources :usersubmission
  
  root 'date_night#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
