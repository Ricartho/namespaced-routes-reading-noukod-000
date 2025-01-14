Rails.application.routes.draw do

  resources :authors, only: [:show, :index] do
    resources :posts, only: [:show, :index, :new, :edit]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  # scope 'admin', module: 'admin' do
  #   resources :stats, only:[:index]
  # end
  #
  namespace :admin do
    resources :stats, only:[:index]
  end
  root 'posts#index'
end
