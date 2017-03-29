Rails.application.routes.draw do

  #metodo 'nome' => 'metodo da controler', as 'nome_do_metodo_no_codigo'
  get 'posts/new' => 'posts#new', as: 'posts_new'
  post 'posts/create' => 'posts#create'
  get 'posts/show/:id' => 'posts#show', as: 'posts_show'
  # get 'posts/create'
  get 'posts/edit' => 'posts#edit', as: 'posts_edit'
  patch 'posts/update' => 'post#update', as: 'post_update'
  patch 'posts/destroy' => 'posts#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   root 'pages#home', as: 'home'
  # root to: 'pages#home'
end
