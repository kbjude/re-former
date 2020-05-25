Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  get "user/:id/edit" => "users#edit"
  put "users/:id/edit" => "users#edit"
end
