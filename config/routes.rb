Rails.application.routes.draw do
  root "votes#index"
  post "vote", to: "votes#create"
  get "report", to: "reports#show"
end
