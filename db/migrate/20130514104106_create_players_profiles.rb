class CreatePlayersProfiles < ActiveRecord::Migration
  def change
    create_table :players_profiles do |t|
      t.string :name
      t.string :date_of_birth
      t.string :age_category

      t.timestamps
    end
  end
end
