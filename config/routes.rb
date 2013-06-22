RailsPhotoAssistant::Application.routes.draw do

 
  root to: "home#index"
  resources :equipments  
  # resources :photo_shoot
  resources :shoots

  # devise_for :users
end
