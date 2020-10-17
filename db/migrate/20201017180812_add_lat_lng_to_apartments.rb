class AddLatLngToApartments < ActiveRecord::Migration[6.0]
  def change
    add_column :apartments, :lat, :float
    add_column :apartments, :lng, :float
  end
end
