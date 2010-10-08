Laboratory::Application.routes.draw do
  

  resources :parms

  # resources :factors


  resources :specimen do
    resources :factors
    resources :shipments do
      resources :fvalues, :only => [:index, :show, :edit, :update]
    end
  end
  # resources :shipments
  match 'specimen/:speciman_id/shipments/:id/passport' => 'shipments#passport', :as => :passport

  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  root :to => 'pages#home'
  # match ':controller(/:action(/:id(.:format)))'
end
