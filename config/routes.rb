Rails.application.routes.draw do
  root "screenings#index"

  get "purchases/index" => "purchases#index", as: "show_all_sales"
  get "movies/:id/all_orders" => "movies#all_orders", as: "show_movie_orders"


  resources :movies do
    resources :purchases, only: [:new, :create]
  end

  resources :auditoria #, only: [:new, :create]
  resources :screenings #, only: [:new, :create]
end
