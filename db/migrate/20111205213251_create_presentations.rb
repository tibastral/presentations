class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.string :name
      t.string :title
      t.string :email

      t.timestamps
    end
  end
end
