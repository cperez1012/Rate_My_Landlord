class AddStreetAddressToApartment < ActiveRecord::Migration[6.0]
  def change
    add_column :apartments, :street_number, :integer
    add_column :apartments, :street_name, :string
    add_column :apartments, :city, :string
    add_column :apartments, :state, :string
    add_column :apartments, :country, :string
    add_column :apartments, :zipcode, :integer
  end
end
