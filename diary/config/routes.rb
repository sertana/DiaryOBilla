Rails.application.routes.draw do
# creating the routes and settng the root to sessions new so that when 
# the app loads it goes to that page
root to: 'sessions#new'

resources :users, only: [:new, :create, :index, :show]

resource :session, only: [:new, :create, :destroy]

resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
