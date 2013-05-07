class AddImage < ActiveRecord::Migration
  def up
  add_column :photos, :image_file_name, :string
  add_column :photos, :image_content_type, :string
  add_column :photos, :image_fie_size, :integer
  add_column :photos, :image_updated_at, :datetime
 end

  def down
  remove_column :photos, :image_file_name
  remove_column :photos, :image_content_type
  remove_column :photos, :image_fie_size
  remove_column :photos, :image_updated_at
  end
end
