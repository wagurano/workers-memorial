Rails.application.routes.draw do
  resources :guestbooks

  get 'pages/home'
  get 'pages/about'

  root 'pages#home'
end
