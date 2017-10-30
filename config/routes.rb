Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/about', to: 'pages#about'

  root "pages#about"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/register', to: 'users#new', as: "new_user"
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

end
