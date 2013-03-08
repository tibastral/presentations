class AddUserIdToPresentations < ActiveRecord::Migration
  def change
    add_column :presentations, :user_id, :integer
  end
end
