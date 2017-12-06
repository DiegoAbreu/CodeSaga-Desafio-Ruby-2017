Rails.application.routes.draw do
  resources :challenges, only: [:new, :create, :show]
end
