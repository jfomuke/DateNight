Rails.application.routes.draw do
  get 'date_night/generate'
  
  root 'date_night#generate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
