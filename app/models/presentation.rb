class Presentation < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :title
  validates_presence_of :email

  def self.did_not_occur_yet
    where {occured_at == nil}
  end

  belongs_to :event

  before_save :set_event_occured_at

  def set_event_occured_at
    if event_id.present?
      self.occured_at = event.occured_at
    end
  end
end
