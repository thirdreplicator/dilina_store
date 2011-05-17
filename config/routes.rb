DilinaStore::Application.routes.draw do
  resources :products
  root :controller => 'products', :action => 'index'
  devise_for :users
end
