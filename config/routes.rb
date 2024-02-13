Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[new create destroy]
  end
end
