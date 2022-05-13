Rails.application.routes.draw do
  root to: 'articles#index'
  # read all articles
  get '/articles',         to: 'articles#index',  as: :articles
  # create a article
  get   'articles/new',    to: 'articles#new',    as: :new_article
  post  'articles',        to: 'articles#create'
  # read 1 article
  get '/articles/:id',     to: 'articles#show', as: :article
  # update a article
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id',    to: 'articles#update'
  # remove a article
  delete 'articles/:id',   to: 'articles#destroy'
end
