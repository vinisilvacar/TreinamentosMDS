Rails.application.routes.draw do
  root 'posts#index'

  post 'posts/create' , to: 'posts#create'

  get 'posts/remove' , to: 'posts#remove'

  get 'posts/index' , to: 'posts#index'

  get 'posts/:id' , to: 'posts#show' , as: 'meu_ovo'

  get 'new' =>'posts#new'
  #get 'posts/edit' , to: 'posts#edit'

  get 'new'=>'posts#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
