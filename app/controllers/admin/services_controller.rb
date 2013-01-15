class Admin::ServicesController < ApplicationController
  
  before_filter :load_site
  layout 'admin'

end