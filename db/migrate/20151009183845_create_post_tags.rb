class CreatePostTags < ActiveRecord::Migration
  def change
    create_table :post_tags do |t|
      t.timestamps
      t.references :post
      t.references :tag
    end
  end
end
