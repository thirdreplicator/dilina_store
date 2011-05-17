Template::Application.routes.draw do
  resources :widgets
  root :controller => 'widgets', :action => 'index'
  devise_for :users
end
