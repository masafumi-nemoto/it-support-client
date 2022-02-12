Rails.application.routes.draw do
    root to:"clients#index"
    get "/new", to: "clients#new"
    post "/create", to: "clients#create"
    delete "/clients/:id", to: "clients#destroy"
    get "/clients/:id/edit", to: "clients#edit"
    patch "/clients/:id", to: "clients#update"
    get "/categories/:id", to: "categories#show"
    $date = Time.now.in_time_zone('Tokyo').to_s
    root "articles#index"
    resources :articles, only: :index
end
