DoubleCheck::Application.routes.draw do
  resources :replaces


  devise_for :users
  match "places", :to => "check_lists#index"
  match "places/:subtype", :to => "check_lists#new", :as => "places"
  match "climate/:subtype", :to => "check_lists#new", :as => "climate"
  match "local/:subtype", :to => "check_lists#new", :as => "local"
  resources :items, :check_lists, :reviews
  root :to => 'static_pages#index'
end
