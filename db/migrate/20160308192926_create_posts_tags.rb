class CreatePostsTags < ActiveRecord::Migration
  def change
    create_join_table :posts, :tags do |t|
      t.index :post_id
      t.index :tag_id

      t.timestamps null: false
    end
  end
end
