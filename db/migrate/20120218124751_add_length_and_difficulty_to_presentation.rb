class AddLengthAndDifficultyToPresentation < ActiveRecord::Migration
  def change
    add_column :presentations, :length, :integer
    add_column :presentations, :difficulty, :integer
  end
end
