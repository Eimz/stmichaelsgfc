class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title
      t.string :string
      t.text :content
      t.text :date

      t.timestamps
    end
  end
end
