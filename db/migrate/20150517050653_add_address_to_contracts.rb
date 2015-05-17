class AddAddressToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :address, :string
  end
end
