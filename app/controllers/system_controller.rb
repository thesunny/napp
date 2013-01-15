class SystemController < ApplicationController
  
  def run
    # require 'populate'
    # Populate.users
    render :json => User.find(:all).sample
  end
  
end
