class Admin::SiteLayoutsController < ApplicationController
  before_filter :load_site
  layout 'admin'
end
