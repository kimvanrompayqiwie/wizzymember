Rails.application.routes.draw do
  resources :comments
  resources :posts
    resources :commments

  devise_for :members
  root 'static#accueil'
  get 'static/assistance'
  get 'static/privacy'
  get 'static/conditions'
  get 'static/confidentialite'
  get 'static/cgu'
  get 'static/cookies'
  get 'static/access'
  get 'static/directives'
  get 'trials', to: 'posts#trials'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
