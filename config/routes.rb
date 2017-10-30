Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "decks#index"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/register', to: 'users#new', as: "new_user"
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/decks', to: "decks#index", as: "decks"
  # get '/decks/:id', to: "decks#show", as: "deck

  post '/decks/:deck_id/rounds', to: 'rounds#create'

  resources :rounds do
    resources :cards
  end

  patch '/cards/:id/guesses', to: 'guesses#update'
  # get '/rounds/:round_id/cards/:id', to: "cards#show", as: "round_card"
  # resources :decks do
  #   resources :cards
  # end

end
