class ChangeUntilToUptoInSponsor < ActiveRecord::Migration
  def change
    rename_column :sponsors, :until, :upto
  end
end
