class PictureUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :thumbnail do
    resize_to_fit(120, 120)
  end
end