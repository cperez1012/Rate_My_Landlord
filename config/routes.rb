Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root 'welcome#index'
resources :welcome
resources :users
resources :apartments
resources :comments
end
