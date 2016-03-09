class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   :title
      t.text     :media
      t.text     :body, null: false
      t.references  :user, null: false, index: true

      t.timestamps null: false
    end
  end
end
