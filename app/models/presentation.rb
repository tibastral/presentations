class Presentation < ActiveRecord::Base

  belongs_to :event
  belongs_to :user

  validates_presence_of :name
  validates_presence_of :title
  validates_presence_of :email

  before_save :set_event_occured_at
  after_save :update_user_email

  def self.did_not_occur_yet
    where {occured_at == nil}
  end

  def set_event_occured_at
    if event_id.present?
      self.occured_at = event.occured_at
    end
  end

  private

  def update_user_email
    user.update_attribute :email, email if user
  end
end
