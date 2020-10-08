class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :message
      t.integer :rating
      t.integer :user_id
      t.integer :apartment_id
      t.timestamps
    end
  end
end
