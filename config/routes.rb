Rails.application.routes.draw do

  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end

    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end

  devise_for :users

  resources :events, only: [:index, :show]
  resources :news_items, only: [:index, :show]
  resources :organizations, only: [:index, :show]
  resources :pages, only: [:show]
  resources :jobs, only: [:index, :show]

  root 'home#index'
end

