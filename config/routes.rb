Rails.application.routes.draw do
  devise_for :employees, controllers: { registrations: 'employees/registrations' }
  resources :visitors
  resources :parks
  resources :rides
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
