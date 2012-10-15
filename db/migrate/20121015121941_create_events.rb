class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events, force: true do |t|
      t.datetime :occured_at
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
