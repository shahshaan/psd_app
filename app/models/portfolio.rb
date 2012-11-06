class Portfolio < ActiveRecord::Base
  attr_accessible :image, :name, :url, :rank

  has_attached_file :image, 
  					:styles => {
  						:thumb => "200x200>", 
  						:medium => "640z640>"
  					},
  					:storage => :s3,
  					:bucket => 'perfectsearchdesign',
  					:s3_credentials => Rails.root.join('config', 's3.yml')
  					# :path =. 

   # has_attached_file :image, :styles => { :medium => "640x640>" },
   #                  :storage => :s3,
   #                  :bucket => 'BUCKET NAME',
   #                  :s3_credentials => Rails.root.join('config', 's3.yml')

end