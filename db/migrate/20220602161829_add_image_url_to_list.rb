class AddImageUrlToList < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :image_url, :text
  end
end
