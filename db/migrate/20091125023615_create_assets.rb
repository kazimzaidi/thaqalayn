class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.integer :user_id,    :null => false
      t.integer :item_id,    :null => false
      t.string  :item_type,  :null => false
      t.string  :asset_view

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
