RailsPhotoAssistant::Application.routes.draw do
  devise_for :users
 
  root :to => "home#index"
  resources :equipment

  match 'create_equipment' => "Equipment#create"
  match 'all' => "Equipment#index"

end
