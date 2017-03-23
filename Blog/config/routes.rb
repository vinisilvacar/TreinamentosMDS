Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/show'

  get 'posts/update'

  get 'posts/create'

  get 'posts/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
