class Site < ActiveRecord::Base
  attr_accessible :name, :owner_id, :subdomain, :layout, :layout_css, :disable_bootstrap
  has_many :pages
  
  validates :name,
    presence: true,
    uniqueness: true
  validates :subdomain,
    presence: true,
    exclusion: {in: %w{www admin support service services}, message: "Subdomain %{value} is reserved"}
  
  validates :layout,
    format: {with: /\{\{content\}\}/, message: "Layout must contain {{content}} to specify where content appears." },
    allow_nil: true
    
  validates :layout,
    format: {with: /\{\{head\}\}/, message: "Layout must contain {{head}} at the top of the <head>." },
    allow_nil: true
  
  
end
