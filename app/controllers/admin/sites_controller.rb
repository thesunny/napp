class Admin::SitesController < ApplicationController
  
  before_filter :load_site
  layout 'site'
  
end
