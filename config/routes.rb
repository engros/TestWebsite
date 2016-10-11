Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'page#home'
  get 'home' => 'page#home'
  get 'advanced_search' => 'page#advanced_search'
  get 'contact_us' => 'page#contact_us'
  get 'account' => 'page#account'
  get 'friends' => 'page#friends'
  get 'my_store' => 'page#my_store'
  get 'help' => 'page#help'
  get 'about_us' => 'page#about_us'
  get 'sign_up'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users # ensures that a POST request to /users is handled by the create action
                   # and that it can find a user (GET) in the database which will then redirect to users#show
                   # resourceful route provides a mapping between HTTP verbs and URLs to controller actions (CRUD)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


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
