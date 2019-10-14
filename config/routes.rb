Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :preferences, only: [:index]
  resources :users, only: [:show]

  get "/quotes/random", to: "quotes#random"
  
  Rails.application.routes.draw do
    devise_for :users,
               path: '',
               path_names: {
                 sign_in: 'login',
                 sign_out: 'logout',
                 registration: 'signup'
               },
               controllers: {
                 sessions: 'sessions',
                 registrations: 'registrations'
               }
  end
end
