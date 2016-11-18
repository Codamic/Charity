Rails.application.routes.draw do
  post 'messages', to: "messages#create", as: :messages
  root "welcome#index"
end
