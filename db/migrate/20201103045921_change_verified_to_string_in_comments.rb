class ChangeVerifiedToStringInComments < ActiveRecord::Migration[6.0]
  def change
    change_column :comments, :verified, :string
  end
end
