ActionController::Routing::Routes.draw do |map|
  map.resources :contacts

  map.resources :hb_logins

  map.resources :internetbranchsignups

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
  map.connect '/', :controller => 'home', :action => 'index'
  map.root :controller => 'home'
  map.onlinebank '/onlinebank', :controller => 'home', :action => 'onlinebank'
  map.onlinebillpay '/onlinebillpay', :controller => 'home', :action => 'onlinebillpay'
  map.locations '/locations', :controller => 'home', :action => 'locations'
  map.loanrates '/loanrates', :controller => 'home', :action => 'loanrates'
  map.visa '/visa', :controller => 'home', :action => 'visa'
  map.touchtone '/touchtone', :controller => 'home', :action => 'touchtone'
  map.depositrates '/depositrates', :controller => 'home', :action => 'depositrates'
  map.currentpromo '/currentpromo', :controller => 'home', :action => 'currentpromo'
  map.recent_newsletters '/recent_newsletters', :controller => 'home', :action => 'recent_newsletters'
  map.loans '/loans', :controller => 'home', :action => 'loans'
  map.newused '/newused', :controller => 'home', :action => 'newused'
  map.signature '/signature', :controller => 'home', :action => 'signature'
  map.sharesec '/sharesec', :controller => 'home', :action => 'sharesec'
  map.mortgage '/mortgage', :controller => 'home', :action => 'mortgage'
  map.recreation '/recreation', :controller => 'home', :action => 'recreation'
  map.sitemap '/sitemap', :controller => 'home', :action => 'sitemap'
  map.estatements '/estatements', :controller => 'home', :action => 'estatements'
  map.fees '/fees', :controller => 'home', :action => 'fees'
  map.membership '/membership', :controller => 'home', :action => 'membership'
  map.privacy '/privacy', :controller => 'home', :action => 'privacy'
  map.ncua '/ncua', :controller => 'home', :action => 'ncua'
  map.security '/security', :controller => 'home', :action => 'security'
  map.difference '/difference', :controller => 'home', :action => 'difference'
  map.billingrights '/billingrights', :controller => 'home', :action => 'billingrights'
  map.calculators '/calculators', :controller => 'home', :action => 'calculators'
  map.heloc '/heloc', :controller => 'home', :action => 'heloc'
  map.secondchance '/secondchance', :controller => 'home', :action => 'secondchance'
  map.share '/share', :controller => 'home', :action => 'share'
  map.regshare '/regshare', :controller => 'home', :action => 'regshare'
  map.moneymarket '/moneymarket', :controller => 'home', :action => 'moneymarket'
  map.certdep '/certdep', :controller => 'home', :action => 'certdep'
  map.ira '/ira', :controller => 'home', :action => 'ira'
  map.clubaccts '/clubaccts', :controller => 'home', :action => 'clubaccts'
  map.visadebit '/visadebit', :controller => 'home', :action => 'visadebit'
  map.loanapp '/loanapp', :controller => 'home', :action => 'loanapp'
  map.sharedbranch '/sharedbranch', :controller => 'home', :action => 'sharedbranch'
  map.cu24 '/cu24', :controller => 'home', :action => 'cu24'
  map.history '/history', :controller => 'home', :action => 'history'
  map.atmlocations '/atmlocations', :controller => 'home', :action => 'atmlocations'
  map.creditcard '/creditcard', :controller => 'home', :action => 'creditcard'
  map.odp '/odp', :controller => 'home', :action => 'odp'
end
