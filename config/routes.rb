Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, :controllers => {:registrations => "registrations"}
  post '/rivers', to: "rivers#create"
end
