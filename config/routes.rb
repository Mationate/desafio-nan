Rails.application.routes.draw do
  resources :proyects
  resources :people
  devise_for :admins

  root 'proyects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
