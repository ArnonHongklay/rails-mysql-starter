Rails.application.routes.draw do
  devise_for :users

  mount Lockr::API => '/'
  mount GrapeSwaggerRails::Engine => '/swagger'

  root 'welcome#index'
end
