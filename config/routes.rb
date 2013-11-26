DoubleCheck::Application.routes.draw do
  resources :replaces


  devise_for :users
  resources :items, :check_lists, :reviews
  root :to => 'static_pages#index'
end
