class CreateNewsletterStMicahelsGfcs < ActiveRecord::Migration
  def change
    create_table :newsletter_st_micahels_gfcs do |t|
      t.string :title
      t.text :content
      t.string :date

      t.timestamps
    end
  end
end
