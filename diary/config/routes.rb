Rails.application.routes.draw do

root to: 'sessions#new'

resources :users, only: [:new, :create, :index, :show]

resource :session, only: [:new, :create, :destroy]

resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
