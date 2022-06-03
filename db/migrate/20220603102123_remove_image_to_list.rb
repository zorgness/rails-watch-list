class RemoveImageToList < ActiveRecord::Migration[6.1]
  def change
    remove_column :lists, :image_url
  end
end
