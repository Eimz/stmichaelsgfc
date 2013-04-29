class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :Age_Category
      t.time :Time
      t.date :Date
      t.string :Location
      t.string :Opponent

      t.timestamps
    end
  end
end
