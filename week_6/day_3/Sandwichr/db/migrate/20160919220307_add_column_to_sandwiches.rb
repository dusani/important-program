class AddColumnToSandwiches < ActiveRecord::Migration[5.0]
  def change
    add_column :sandwiches, :total_calories, :integer
    add_column :sandwiches, :default, :integer
  end
end
