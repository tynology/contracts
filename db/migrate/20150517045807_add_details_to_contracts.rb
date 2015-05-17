class AddDetailsToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :date, :date
    add_column :contracts, :contact, :string
    add_column :contracts, :city, :string
    add_column :contracts, :state, :string
    add_column :contracts, :zip, :string
    add_column :contracts, :phone, :string
    add_column :contracts, :fax, :string
    add_column :contracts, :email, :string
  end
end
