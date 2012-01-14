class AddUrlToPresentation < ActiveRecord::Migration
  def change
    add_column :presentations, :url, :string
    add_column :presentations, :occured_at, :date
  end
end
