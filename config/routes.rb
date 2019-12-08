Rails.application.routes.draw do
  get 'date_night/index'
  
  resources :generator do
    resources :dateactivity
    resources :datefoods
  end
  
  resources :activity
  resources :user_submission
  
  root 'date_night#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
