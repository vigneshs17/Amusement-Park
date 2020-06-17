Rails.application.routes.draw do
  devise_for :employees
  resources :visitors
  resources :parks
  resources :rides
  root 'pages#home'
  get 'ticket', to: 'pages#ticket'
  get 'employee', to: 'pages#employee'
  get 'infor', to:'pages#infor'
  get 'parke', to: 'pages#parke'
  get 'thank', to: 'pages#thank'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
