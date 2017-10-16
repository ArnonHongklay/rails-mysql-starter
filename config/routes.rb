Rails.application.routes.draw do
  devise_for :users

  mount ApplicationApi, at: "/"
  mount GrapeSwaggerRails::Engine => '/swagger'

  root 'welcome#index'
end
