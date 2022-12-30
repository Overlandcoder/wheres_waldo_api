Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/api/check_guess", to: "characters#check_guess"
  post "/api/save_score", to: "scores#create"
  get "/api/top_scores", to: "scores#top_scores"
end
