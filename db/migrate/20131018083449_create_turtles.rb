class CreateTurtles < ActiveRecord::Migration
  def change
    create_table :turtles do |t|

      t.timestamps
    end
  end
end
