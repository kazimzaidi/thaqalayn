class CreateTextAssets < ActiveRecord::Migration
  def self.up
    create_table :text_assets do |t|
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :text_assets
  end
end
