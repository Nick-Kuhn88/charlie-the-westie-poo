Rails.application.routes.draw do
  root 'charlie#index'
  resources :compliments, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
