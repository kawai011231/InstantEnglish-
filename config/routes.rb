Rails.application.routes.draw do
  get 'phrases', to: 'phrases#index'
  get 'phrases/new', to: 'phrases#new', as: 'new_phrase'
  post 'phrases', to: 'phrases#create'
  delete 'phrases/:id', to: 'phrases#destroy', as: 'phrase'
end
