require 'sidekiq/web'

Rails.application.routes.draw do

  namespace :admin do
    resources :schedules
    resources :addresses
    resources :sells
    resources :suppliers
    resources :campaigns
    resources :discounts
    resources :services
    resources :products
    resources :clients

  end

  get 'email_sents/:id/read' => "email_sents#read"

  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  mount Sidekiq::Web => '/sidekiq'
end
