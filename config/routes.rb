Rails.application.routes.draw do


  root to: 'memories#index'

  resources :sessions, only: [:new, :create, :destroy]

  constraints subdomain: 'api' do
    namespace :api, path: '/', defaults: {format: :json} do

      resources :memories, only: [:index]
      resources :users, only: [:show, :update] do
        resources :memories, only: [:index, :create, :update, :destroy]
      end 
      resources :sessions, only: [:new, :create, :destroy]
    end
  end

  resources :users, only: [:show, :new, :create] 

  resources :bookmarks, only: [:index]

  resources :home, only: [:index, :show]
  # get 'users/show'

  # get 'users/new'
  # post

  # get 'users/edit'

  # get 'users/create'

  # get 'users/update'

  # get 'users/destroy'

  # get 'memories/update'

  # get 'memories/destroy'

  # get 'memories/create'

  # get 'memories/index'

  # get 'memories/show'

  # get 'memories/new'

  # get 'memories/edit'

  # root 'welcome#index'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
