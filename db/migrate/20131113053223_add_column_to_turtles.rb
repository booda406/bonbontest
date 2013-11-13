class AddColumnToTurtles < ActiveRecord::Migration
  def change
  	add_column :turtles, :breed, :string
  	add_column :turtles, :name, :string
  	add_column :turtles, :weight, :integer
  	add_column :turtles, :length, :integer
  	add_column :turtles, :description, :string
  	add_column :turtles, :age, :integer
  end
end
