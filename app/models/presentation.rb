class Presentation < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :title
  validates_presence_of :email

  def self.did_not_occur_yet
    where {occured_at == nil}
  end
end
