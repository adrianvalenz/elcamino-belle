Rails.application.routes.draw do
  devise_for :technicians
  root 'welcome#show'
end
