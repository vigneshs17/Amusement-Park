class AddReferencesToRide < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :rides, :parks, column: :exists_in, primary_key: "pno"
  end
end
