class AddEventToPresentation < ActiveRecord::Migration
  def change
    add_column :presentations, :event_id, :integer
  end
end
