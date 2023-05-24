Rails.application.routes.draw do
  get '/users/:username', to: "users#show"
  get '/jobs/:jobid', to: "jobs#show"
end
