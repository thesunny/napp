class LayoutController < ApplicationController
  
  before_filter :load_site
  
  layout 'site'
  
end
