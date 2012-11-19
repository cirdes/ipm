class Slider < ActiveRecord::Base
  attr_accessible :caption, :description

  attr_accessible :image
  
  has_attached_file :image, 
	:styles=> {:original=>"940x400#", :thumb => "118x50>"},
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :s3_permissions => :public_read,
    :path => ":attachment/:id/:style_:basename.:extension"
end
