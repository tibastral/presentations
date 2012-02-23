class AddSlidesUrlToPresentation < ActiveRecord::Migration
  def change
    add_column :presentations, :slides_url, :string
    remove_column :presentations, :url
    add_column :presentations, :video_url, :string
  end
end
