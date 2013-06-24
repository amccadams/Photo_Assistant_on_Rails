RailsPhotoAssistant::Application.routes.draw do

 
  root to: "home#index" 

  resources :shoots do
    resources :equipments
    member do
    	post :add_equipment
    	get :remove_equipment
    end

  end
  resources :equipments
  # devise_for :users
end
