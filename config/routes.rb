Rails.application.routes.draw do
  get 'date_night/index'
  
  resources :generator do
    resources :activity
  end
  
  resources :activity
  resources :usersubmission
  
  root 'date_night#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
