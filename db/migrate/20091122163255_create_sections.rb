class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
      t.string :name,      :null => false
      t.integer :user_id,  :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :sections
  end
end
