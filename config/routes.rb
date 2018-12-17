Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, :controllers => {:registrations => "registrations"}
  get '/agencies/new', to: "agencies#new"
  post '/agencies', to: "agencies#create"
end
