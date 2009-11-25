class CreateAssetsSections < ActiveRecord::Migration
  def self.up
    create_table :assets_sections, :id => false do |t|
      t.integer :asset_id,    :null => false
      t.integer :section_id,  :null => false
      t.integer :position,    :null => false
    end
  end

  def self.down
    drop_table :assets_sections
  end
end
