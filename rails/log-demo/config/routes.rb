Rails.application.routes.draw do
  root to: "posts#index"
  resources :posts

  get '*unmatched_route', to: 'application#route_not_found'
end
