class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.timestamps
      t.string :title
      t.string :content
      t.string :author
    end
  end
end
