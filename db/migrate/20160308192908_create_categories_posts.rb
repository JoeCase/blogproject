class CreateCategoriesPosts < ActiveRecord::Migration
  def change
    create_join_table :categories, :posts do |t|
      t.index :category_id
      t.index :post_id

      t.timestamps null: false
    end
  end
end
