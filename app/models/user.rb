class User < ActiveRecord::Base
  attr_accessible :name, :email, :company, :phone, :street, :city, :state, :zip
  
  belongs_to :site
end