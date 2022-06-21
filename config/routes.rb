Rails.application.routes.draw do
  root to: 'listes#index'
  resources :listes, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
