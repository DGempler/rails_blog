class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.timestamps
      t.string :name
    end
  end
end
