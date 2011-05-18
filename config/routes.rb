DilinaStore::Application.routes.draw do
  resources :sales

  get "sales/new"

  resources :products
  root :controller => 'products', :action => 'index'
  devise_for :users
end
