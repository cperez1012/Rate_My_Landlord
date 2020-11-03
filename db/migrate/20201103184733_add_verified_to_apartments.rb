class AddVerifiedToApartments < ActiveRecord::Migration[6.0]
  def change
    add_column :apartments, :verified, :string
  end
end
