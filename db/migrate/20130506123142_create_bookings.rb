class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :reason
      t.string :text
      t.date :date
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
