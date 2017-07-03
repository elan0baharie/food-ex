Rails.application.routes.draw do
  root 'splashes#index'

  get '/splashes' => 'splashes#index'

  resources :products do
    resources :reviews
  end
end
