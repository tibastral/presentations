class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.date :from
      t.date :until

      t.timestamps
    end
  end
end
