class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :category_id
      t.string :photo
      t.text :content
      t.string :status

      t.timestamps
    end
  end
end
