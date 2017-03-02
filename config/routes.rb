Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :songs
  resources :genres
  root to: "songs#home"
  get 'usersongs', to: 'user_songs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
