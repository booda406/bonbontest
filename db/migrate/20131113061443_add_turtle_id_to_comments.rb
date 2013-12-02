class AddTurtleIdToComments < ActiveRecord::Migration
  def change
  	add_column :comments, :turtle_id, :integer
  end
end
