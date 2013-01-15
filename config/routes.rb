Napp::Application.routes.draw do
  
  # get "service/site_id:integer"
# 
  # get "service/slug"
# 
  # get "service/name"
# 
  # get "service/content:text"

  resources :sites

  # constraints subdomain: /^super$/ do
    # ActiveAdmin.routes(self)
    # devise_for :admin_users, ActiveAdmin::Devise.config
  # end
  
  constraints Proc.new { |r| puts '-------------------------'; puts r.env; true } do
    scope '/:page_name' do
      resource :site, :path => '/'
    end
  end
    
  # constraints FeatureConstraint.new do
    # resource :forums, path: '/:feature_name', constraints: FeatureConstraint.new('forum') do
      # resources :comments
    # end
    # resource :docs, path: '/:feature_name', constraints: FeatureConstraint.new('doc') do
      # resources :pages
    # end
  # end
  
  match 'system/:action' => 'system'

  match '', to: 'sites#show', constraints: {subdomain: /.+/}
  
  match 'admin' => 'sites#show'
  constraints subdomain: /.+/ do
    
    
    resource :forum
    
    namespace :admin do
      resource :site
      resource :services
      resource :site_layout, only: [:edit, :show] do
        member do
          get 'preview'
        end
      end
    end
    
  end
  
  resource :layout, :controller => :layout 

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
