class AddReferencesToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :employees, :rides, column: :operates, primary_key: "rno"
    add_foreign_key :employees, :parks, column: :works_for, primary_key: "pno"
  end
end
