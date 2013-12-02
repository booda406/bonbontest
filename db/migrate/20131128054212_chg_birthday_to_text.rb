class ChgBirthdayToText < ActiveRecord::Migration
  def change
  	change_column :users, :birthday, :text
  end
end
