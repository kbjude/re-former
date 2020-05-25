Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  get "user/:id/edit" => "users#edit"
  put "user/:id" => "users#edit"
end
