Rails.application.routes.draw do
  resources :proyects do
    resources :people, only: [] do
      resources :works, only: %i[create new destroy]
    end
  end
  resources :people
  devise_for :admins



  root 'proyects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
