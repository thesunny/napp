class Service < ActiveRecord::Base
  attr_accessible :name, :site, :slug
  
  has_one :site
end
