Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for  :users,
              defaults: {
                format: :json
              },
              path: '',
              path_names: {
                sign_in: 'login',
                sign_out: 'logout',
                registration: 'users'
              },
              controllers: {
                sessions: 'sessions',
                registrations: 'registrations'
              }
  resources :posts, only: %i[index show]
  get '/users/me' => 'users#me'
  get 'users/me/following' => 'users#current_following'
  get 'users/me/followers' => 'users#current_followers'
  resources :users, only: %i[show]
end
