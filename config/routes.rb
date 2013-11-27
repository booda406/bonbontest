Bonbontest::Application.routes.draw do
  resources :turtles

  resources :comments

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'turtles#sell_index'
   get 'share_count' => 'turtles#sell_count'
   get 'share' => 'turtles#share'
   get 'about' => 'turtles#about'
   get 'animal' => 'turtles#animal'# 沒用到
   get 'first' => 'turtles#first'# 沒用到

   get 'sulcata' => 'turtles#sulcata'
   get 'pool_01' => 'turtles#pool_01'
   get 'pool_02' => 'turtles#pool_02'   
   get 'leopard' => 'turtles#leopard'
   get 'reddot' => 'turtles#reddot'
   get 'show_01' => 'turtles#show_01'
   get 'show_02' => 'turtles#turtle07'
   get 'sulcata_and_sun' => 'turtles#turtle08'
   get 'redearturtle' => 'turtles#turtle09'

   #analysis
   get 'performance' => 'turtles#performance'

  # post
   post 'contacts' => 'contact#create'

  # 以下為blog後台
   get 'blog_register' => 'turtles#blog_register'
   get 'post_new' => 'turtles#post_new'



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
