class CreateEmployees < ActiveRecord::Migration[5.2]
  def primary_key(name, type = :primary_key, options = {})
    column(name, type, options.merge(:primary_key => true))
  end

  def change
    create_table :employees, id: false do |t|
      t.primary_key :eid
      t.string :ename
      t.integer :age
      t.bigint :econtact
      t.string :email
      t.string :post
      t.string :sex

      t.timestamps
    end
  end
end
