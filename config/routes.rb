RailsPhotoAssistant::Application.routes.draw do

 
  root to: "home#index"
  resources :equipments, only: [:list, :index, :new, :show, :create, :edit, :destroy]

  # devise_for :users
end
