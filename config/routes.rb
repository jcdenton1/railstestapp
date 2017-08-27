Rails.application.routes.draw do
  root 'main#index'
  get 'main', to: 'main#index'
  resources :nerds
  resources :geeks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
