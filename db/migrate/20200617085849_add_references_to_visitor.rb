class AddReferencesToVisitor < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :visitors, :parks, column: :visits, primary_key: "pno"
  end
end
