Rails.application.routes.draw do
  devise_for :users
  resources :students
  resources :sections
  resources :courses
  root "home#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
