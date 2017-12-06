Rails.application.routes.draw do
  get '/' => 'welcome#index'
  get 'welcome' => 'welcome#index'
end
