class Sponsor < ActiveRecord::Base
  attr_accessible :from, :name, :upto, :logo
  mount_uploader :logo, PictureUploader
end
