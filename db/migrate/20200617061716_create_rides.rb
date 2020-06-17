class CreateRides < ActiveRecord::Migration[5.2]

  def primary_key(name, type = :primary_key, options = {})
    column(name, type, options.merge(:primary_key => true))
  end

  def change
    create_table :rides, id: false do |t|
      t.primary_key :rno
      t.string :rname
      t.bigint :exists_in
      t.timestamps
    end
  end
end
