class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :surname
      t.string :place
      t.date :birthday
      t.string :gender
      t.text :site
      t.text :bio

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
