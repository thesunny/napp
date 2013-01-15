class ApplicationController < ActionController::Base
  
  protect_from_forgery

  def load_site
    @site = Site.find_by_subdomain!(request.subdomain)
  end
  
end
