Rails.application.routes.draw do
  root "movies#index"

  get "purchases/index" => "purchases#index", as: 'show_all_sales'

  resources :movies do
    resources :purchases, only: [:new, :create]
  end
end
