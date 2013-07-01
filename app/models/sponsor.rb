class Sponsor < ActiveRecord::Base
  attr_accessible :from, :name, :until, :logo
  mount_uploader :logo, PictureUploader
end
