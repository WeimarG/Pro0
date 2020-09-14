Rails.application.routes.draw do
  devise_for :users
  # get 'home/index'

get "/login", to: "home#index"	

root to: "home#index"	

get "events", to: "events#index"
get "events/new", to: "events#new", as: :new_events
get "events/:id", to: "events#show"
get "events/:id/edit", to: "events#edit"

patch "events/:id", to: "events#update", as: :event
post "events", to: "events#create"
delete "/events/:id", to: "events#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
