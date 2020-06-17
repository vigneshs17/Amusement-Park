class AddEnameToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :ename, :string
    add_column :employees, :age, :integer
    add_column :employees, :contact, :bigint
    add_column :employees, :post, :string
    add_column :employees, :gender, :string
    add_column :employees, :works_for, :bigint, :references => "rides"
    add_column :employees, :operates, :bigint, :references => "parks"
  end
end
