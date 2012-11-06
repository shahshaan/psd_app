class Portfolio < ActiveRecord::Base
  attr_accessible :image, :name, :url, :rank

  has_attached_file :image, 
  					:styles => {
  						:thumb => "200x200>", 
  						:medium => "640z640>"
  					},
  					:storage => :s3,
  					:bucket => 'perfectsearchdesign',
  					:s3_credentials => {
  						:access_key_id => ENV['AMAZONS3_ACCESS_KEY'],
  						:secret_access_key => ENV['AMAZONS3_SECRET_ACCESS_KEY']
  					}

end