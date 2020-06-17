class CreateParks < ActiveRecord::Migration[5.2]
  def primary_key(name, type = :primary_key, options={})
    column(name, type, options.merge(:primary_key => true))
  end

  def change
    create_table :parks, id: false do |t|
      t.primary_key :pno
      t.string :pname
      t.string :location
      t.integer :employees, :default => 0

      t.timestamps
    end
  end
end
