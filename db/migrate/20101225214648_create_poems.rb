class CreatePoems < ActiveRecord::Migration
  def self.up
    create_table :poems do |t|
      t.integer :user_id
      t.integer :chapter_id
      t.string :tags
      t.date :composed_at
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :poems
  end
end
