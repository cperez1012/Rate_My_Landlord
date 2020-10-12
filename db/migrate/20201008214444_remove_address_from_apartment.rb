class RemoveAddressFromApartment < ActiveRecord::Migration[6.0]
  def change
    remove_column :apartments, :address, :string
  end
end
