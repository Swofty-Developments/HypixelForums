Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  root "main#home"
  get "games", to: "main#games"
  get "leaderboards", to: "main#leaderboards"
  get "rules-and-policies", to: "main#rules_and_policies"
end
