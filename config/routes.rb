Rails.application.routes.draw do
  root to: 'static_pages#home'
  devise_for :users
  get 'static_pages/home'
  get 'static_pages/help'
  get '/japanese_quiz', to: 'japanese_quiz#show'
  get '/report', to: 'report#index'
  get '/report/:id', to: 'report#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
