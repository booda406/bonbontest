class ChgBirthdayToString2 < ActiveRecord::Migration
  def change
  	change_column :users, :birthday, :string
  end
end
