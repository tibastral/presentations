class Event < ActiveRecord::Base
  attr_accessible :occured_at, :title, :url

  after_initialize :after_init
  def after_init
    self.occured_at ||= Time.now
  end
end
