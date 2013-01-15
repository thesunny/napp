class SitesController < InheritedResources::Base
  
  before_filter :load_site
  
  layout 'site'
  
  def show
  end
  
end
