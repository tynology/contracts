class AddRepIdToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :rep_id, :integer
  end
end
