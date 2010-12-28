class RemoveTagsFromPoems < ActiveRecord::Migration
  def self.up
    remove_column :poems, :tags
  end

  def self.down
    add_column :poems, :tags
  end
end
