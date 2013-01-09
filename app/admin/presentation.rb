ActiveAdmin.register Presentation do
  scope :all, default: true
  scope :did_not_occur_yet
  batch_action :did_happen, confirm: "Are you sure all these presentations occured at last event ?" do |ids|
    ids.each do |id|
      presentation = Presentation.find(id)
      presentation.event = Event.last
      presentation.save
    end
    redirect_to action: :index
  end
end
