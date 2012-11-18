class Slider < ActiveRecord::Base
  attr_accessible :caption, :description

  attr_accessible :slider
  has_attached_file :slider, 
	:styles=> {:original=>"940x400#", :thumb => "118x50>"},
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :s3_permissions => :public_read,
end
