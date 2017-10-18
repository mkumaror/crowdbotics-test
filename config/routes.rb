Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "phrase#index"

  get "/rand_phrase", to: "phrase#rand_phrase"

  get "/clear_phrases", to: "phrase#clear_phrases"
end
