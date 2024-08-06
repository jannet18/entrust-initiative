Rails.application.routes.draw do
  # post "stkpush", to: "mpesas#stkpush"
  # post 'polling_payment', to: 'mpesas#polling_payment'
  # post "callback_url", to: "mpesas#callback_url"

  resources :volunteers, only: [:create]
  resources :programs do
    resources :categories, only: [:index, :show]
  end
  resources :students, only: [:index, :create]
  resources :products, only: [:index, :show]
end
