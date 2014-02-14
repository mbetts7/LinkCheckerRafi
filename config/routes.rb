LinkChecker::Application.routes.draw do
  root 'sites#new'
  get '/sites/new', to: 'sites#new', as: 'new_site'
  post '/sites', to: 'sites#create', as: 'sites'
  get '/sites/:id', to: 'sites#show', as: 'site'
  get '/linkfarm', to: 'sites#linkfarm'
  get 'sites/:id/edit', to: 'sites#edit', as: 'edit_site'
  patch 'sites/:id', to: 'sites#update'
  delete 'sites/:id', to: 'sites#delete'
end
