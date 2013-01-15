class Page < ActiveRecord::Base
  attr_accessible :name, :permalink, :site_id, :type
  
  belongs_to :site
end
