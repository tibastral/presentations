class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid      = auth["uid"]
      user.name     = auth["info"]["name"]
      user.photo_url= auth["info"]["photo_url"]
      user.link     = auth["extra"]["raw_info"]["link"]
    end
  end

end