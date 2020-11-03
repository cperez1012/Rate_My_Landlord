class AddVerifiedToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :verified, :boolean
  end
end
