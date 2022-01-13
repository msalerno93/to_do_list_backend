class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :description
      t.integer :category_id

      t.timestamps
    end
  end
end
