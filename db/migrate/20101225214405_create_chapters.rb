class CreateChapters < ActiveRecord::Migration
  def self.up
    create_table :chapters do |t|
      t.integer :user_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :chapters
  end
end
