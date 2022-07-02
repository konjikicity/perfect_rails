Rails.application.routes.draw do
  root 'welcome#index'
  get "/auth/:privider/callback", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :events do
    resources :tickets
  end
end
