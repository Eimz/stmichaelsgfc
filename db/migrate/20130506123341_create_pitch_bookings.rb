class CreatePitchBookings < ActiveRecord::Migration
  def change
    create_table :pitch_bookings do |t|
      t.string :name
      t.text :reason
      t.date :date
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
