Rails.application.routes.draw do
  devise_for :users
  get 'public/homes/about' => 'public/homes#about', as: 'about'
  root to: "public/homes#top"
  namespace :public do
    resources :items, only:[:show, :index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
