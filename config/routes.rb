Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  get 'show' => 'restaurants#show'

  post 'restaurants' => 'restaurants#find'
end
