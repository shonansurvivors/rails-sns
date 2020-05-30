Rails.application.routes.draw do
  root 'articles#index'
  devise_for :users
  get '' => 'articles#index'
  resources :articles, :except => :index
end
