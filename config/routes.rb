# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :lifts, except: %i[new edit]
  resources :users, except: %i[new edit]

  # Lifts
  # Index:
  get '/lifts' => 'lifts#index'
  # Show:
  get '/lifts/:id' => 'lifts#show'
  # Create:
  post '/lifts' => 'lifts#create'
  # Update:
  patch '/lifts/:id' => 'lifts#update'
  # Destroy:
  delete '/lifts/:id' => 'lifts#destroy'

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
