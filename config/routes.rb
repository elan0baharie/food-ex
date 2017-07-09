Rails.application.routes.draw do
  root 'splashes#index'

  get '/splashes' => 'splashes#index'

  get '/about' => 'abouts#index'

  resources :products do
    resources :reviews
  end
end
