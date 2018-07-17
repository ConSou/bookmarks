Rails.application.routes.draw do

  resources :topics do
    resources :bookmarks, except: [:index]
  end
  devise_for :users
  root 'welcome#index'
end
