class AddImageToPlayersProfile < ActiveRecord::Migration
  def up
  add_column :players_profiles, :pic_file_name, :string
  add_column :players_profiles, :pic_content_type, :string
  add_column :players_profiles, :pic_fie_size, :integer
  add_column :players_profiles, :pic_updated_at, :datetime
 end

  def down
  remove_column :players_profiles, :pic_file_name
  remove_column :players_profiles, :pic_content_type
  remove_column :players_profiles, :pic_fie_size
  remove_column :players_profiles, :pic_updated_at
  end
end
