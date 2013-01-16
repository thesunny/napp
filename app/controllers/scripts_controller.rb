class ScriptsController < ApplicationController
  
  before_filter :init_filename, only: [:show, :run]
  
  def init_filename
    @filename = sanitize_filename(params[:filename])
    @path = File.join('./app/scripts/', "#{@filename}.rb") 
  end
  
  def filename
    
  end
  
  def sanitize_filename(filename)
    name = filename.strip
    # NOTE: File.basename doesn't work right with Windows paths on Unix
    # get only the filename, not the whole path
    name.gsub!(/^.*(\\|\/)/, '')
   
    # Strip out the non-ascii character
    name.gsub!(/[^0-9A-Za-z.\-]/, '_')
    name
  end  
  
  def index
    @files = Dir.glob('./app/scripts/*.rb').map do |file|
      file.split('/').last.split('.').first
    end
  end
  
  def show
    # throw @filename
    # throw filename
    @content = File.read(@path)
  end
  
  def run
    begin
      load @path
    rescue => e
      @error = e
    end
    @content = File.read(@path)
    render :show
  end
  
end
