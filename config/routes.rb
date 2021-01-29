Rails.application.routes.draw do
  resources :battles, only: :create
  resources :enemies, only: [:show, :create, :update]
  resources :heros, only: [:index, :show, :create, :update]

  get '/high_scores', to: "heros#high_scores"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 