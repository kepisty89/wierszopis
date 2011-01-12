class AddMp3ToPoems < ActiveRecord::Migration
  def self.up
    add_column :poems, :mp3_file_name, :string
    add_column :poems, :mp3_content_type, :string
    add_column :poems, :mp3_file_size, :integer
  end

  def self.down
    remove_column :poems, :mp3_file_size
    remove_column :poems, :mp3_content_type
    remove_column :poems, :mp3_file_name
  end
end
