Rails.application.routes.draw do
  namespace :users do
    resources :tweets, only: [:post, :create] do
      get 'last_tweets', on: :collection
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
