Rails.application.routes.draw do
  resources :visitors
  resources :employees
  resources :parks
  resources :rides
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
