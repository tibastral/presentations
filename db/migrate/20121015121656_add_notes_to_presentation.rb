class AddNotesToPresentation < ActiveRecord::Migration
  def change
    add_column :presentations, :notes, :text
  end
end
