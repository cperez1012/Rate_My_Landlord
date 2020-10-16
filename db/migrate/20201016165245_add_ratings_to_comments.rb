class AddRatingsToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :rating_noise, :integer
    add_column :comments, :rating_appearance, :integer
    add_column :comments, :rating_safety, :integer
    add_column :comments, :rating_staff, :integer
    add_column :comments, :rating_maintenance, :integer
  end
end
