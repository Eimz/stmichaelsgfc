class CreateSignUpNewsletters < ActiveRecord::Migration
  def change
    create_table :sign_up_newsletters do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
