class CreateVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :visitors do |t|
      t.string :vname
      t.string :vemail
      t.bigint :contact
      t.date :visitDate
      t.integer :noOfTickets

      t.timestamps
    end
  end
end
