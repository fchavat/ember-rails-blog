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
  resources :posts
end
