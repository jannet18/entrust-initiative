Rails.application.routes.draw do
  devise_for :admins, path: "", path_names: {
    sign_in: "login",
    sign_out: "logout",
    registration: "signup"
  }, 
  controllers: {
    sessions: 'admins/sessions',
    registrations: "admins/registrations"
  }

  get '/current_user', to: 'current_user#index'
  
  devise_for :users, path: "", path_names: {
    sign_in: "login",
    sign_out: "logout",
    registration: "signup"
  },
  controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }

  post "stkpush", to: "mpesas#stkpush"
  post 'polling_payment', to: 'mpesas#polling_payment'
  post "callback_url", to: "mpesas#callback_url"

  resources :volunteers, only: [:create]
  resources :programs do
    resources :categories, only: [:index, :show]
  end
  resources :students, only: [:index, :create]
  resources :products, only: [:index, :show]
  resources :teams, only: [:index, :show]
end
