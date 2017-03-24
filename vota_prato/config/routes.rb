Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match 'ola' => 'ola_mundo#index', via: 'get'
  resources :restaurantes
  match 'index' => 'restaurantes#index', via: 'get'
  match 'delete' => 'restaurantes#destroy', via: 'get'
end
